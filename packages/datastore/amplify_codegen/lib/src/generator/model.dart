// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:collection';

import 'package:amplify_codegen/src/generator/generator.dart';
import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';

/// {@template amplify_codegen.model_generator}
/// Generates libraries for model types.
///
/// Generally, a library consists of two classes: the Model class and the
/// ModelType class; however, custom types have only a Model class.
/// {@endtemplate}
class ModelGenerator
    extends LibraryGenerator<ObjectTypeDefinitionNode, ModelTypeDefinition> {
  /// {@template amplify_codegen.model_generator}
  ModelGenerator({
    required super.node,
    required super.definition,
  });

  /// The class name for the model.
  late final String modelName = schemaName.pascalCase;

  /// The class name for the model type.
  late final String modelTypeName = '${modelName}Type';

  /// The reference for the model.
  late final Reference modelType = refer(modelName);

  /// The reference for the partial model.
  late final Reference partialModelType = refer('Partial$modelName');

  /// The reference for the remote model.
  late final Reference remoteModelType = refer('Remote$modelName');

  /// The reference for the model identifier.
  late final Reference modelIdentifierType = () {
    final primaryIndex = definition.modelIdentifier;
    final primaryKeyFields = primaryIndex.fields
        .map(
          (name) => definition.fields[name]!,
        )
        .toList();
    assert(primaryIndex.fields.isNotEmpty, 'Not enough fields');
    final fields = [
      for (final field in primaryKeyFields)
        Field(
          (f) => f
            ..name = field.name
            ..type = field.type.reference
            ..modifier = FieldModifier.final$,
        ),
    ];
    if (fields.length == 1) {
      return fields.single.type!;
    }
    final modelIdentifierName = '${modelName}Identifier';
    final cls = Class((c) {
      c
        ..name = modelIdentifierName
        ..annotations.add(DartTypes.meta.immutable)
        ..mixins.addAll([
          DartTypes.awsCommon.awsEquatable(refer(modelIdentifierName)),
          DartTypes.awsCommon.awsSerializable(DartTypes.core.json),
          DartTypes.awsCommon.awsDebuggable,
        ])
        ..fields.addAll(fields);

      final parameters = <Parameter>[];
      for (final field in primaryKeyFields) {
        parameters.add(
          Parameter(
            (p) => p
              ..name = field.name
              ..toThis = true
              ..named = true
              ..required = field.type.isRequired,
          ),
        );
      }
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..constant = true
            ..optionalParameters.addAll(parameters),
        ),
      );

      // `props` to satisfy `AWSEquatable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.list(DartTypes.core.object.nullable)
            ..type = MethodType.getter
            ..name = 'props'
            ..body = literalList(fields.map((f) => refer(f.name))).code,
        ),
      );

      // `toJson` to satisfy `AWSSerializable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.json
            ..name = 'toJson'
            ..body = literalMap({
              for (final field in fields)
                literalString(field.name): refer(field.name),
            }).code,
        ),
      );

      // `runtimeTypeName` to satisfy `AWSDebuggable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.string
            ..type = MethodType.getter
            ..name = 'runtimeTypeName'
            ..body = literalString(modelIdentifierName).code,
        ),
      );
    });
    builder.body.add(cls);
    return refer(modelIdentifierName);
  }();

  @override
  Library generate() {
    builder.body.addAll([
      modelTypeImpl,
      ...partialModelImpl,
      ...modelImpl,
      ...remoteModelImpl,
    ]);

    return builder.build();
  }

  /// The implementation of the model's `ModelType`.
  Class get modelTypeImpl {
    return Class((c) {
      c
        ..name = modelTypeName
        ..extend = DartTypes.amplifyCore.modelType(
          modelIdentifierType,
          modelType,
          partialModelType,
        )
        ..constructors.add(Constructor((ctor) => ctor.constant = true));

      // The `fromJson` method.
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = refer('T')
            ..name = 'fromJson'
            ..types.add(
              TypeReference(
                (t) => t
                  ..symbol = 'T'
                  ..bound = DartTypes.amplifyCore.partialModel(
                    modelIdentifierType,
                    modelType,
                  ),
              ),
            )
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..lambda = false
            ..body = const Code('throw UnimplementedError();'),
        ),
      );

      // The `modelName` getter.
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.string
            ..type = MethodType.getter
            ..name = 'modelName'
            ..body = literalString(schemaName).code,
        ),
      );
    });
  }

  /// The partial model type is represented by a public interface, e.g.
  /// `PartialUser`, which is not instantiable, and a private implementation,
  /// e.g. `_PartialUser extends PartialUser` which is instantiated only via
  /// the `fromJson` method of the `ModelType`.
  Iterable<Class> get partialModelImpl sync* {
    // Create the public interface
    yield Class((c) {
      c
        ..abstract = true
        ..name = partialModelType.symbol
        ..extend = DartTypes.amplifyCore.partialModel(
          modelIdentifierType,
          modelType,
        )
        ..mixins.add(
          DartTypes.awsCommon.awsEquatable(partialModelType),
        )
        ..constructors.add(
          Constructor(
            (ctor) => ctor
              ..name = '_'
              ..constant = true,
          ),
        );

      final fields = definition.fields.values.toList();

      // Abstract getters for each field
      for (final field in fields) {
        c.methods.add(
          Method(
            (m) => m
              ..returns = field.type.reference
              ..type = MethodType.getter
              ..name = field.name,
          ),
        );
      }

      // `modelIdentifier` to satisfy `PartialModel`
      final modelIdentifierFields = definition.modelIdentifier.fields;
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = modelIdentifierType
            ..type = MethodType.getter
            ..name = 'modelIdentifier'
            ..body = (modelIdentifierFields.length == 1
                    ? refer(modelIdentifierFields.single)
                    : modelIdentifierType.newInstance([], {
                        for (final field in modelIdentifierFields)
                          field: refer(field),
                      }))
                .code,
        ),
      );

      // `modelType` to satisfy `PartialModel`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = refer(modelTypeName)
            ..type = MethodType.getter
            ..name = 'modelType'
            ..lambda = true
            ..body = modelType.property('classType').code,
        ),
      );

      // `props` to satisfy `AWSEquatable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.list(DartTypes.core.object.nullable)
            ..type = MethodType.getter
            ..name = 'props'
            ..body = literalList(fields.map((f) => refer(f.name))).code,
        ),
      );

      // `toJson` to satisfy `AWSSerializable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.map(
              DartTypes.core.string,
              DartTypes.core.object.nullable,
            )
            ..name = 'toJson'
            ..body = literalMap({
              for (final field in fields)
                literalString(field.name): refer(field.name),
            }).code,
        ),
      );

      // `runtimeTypeName` to satisfy `AWSDebuggable`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.string
            ..type = MethodType.getter
            ..name = 'runtimeTypeName'
            ..body = literalString(modelName).code,
        ),
      );

      // `valueFor` to satisfy `PartialModel`
      c.methods.add(
        Method(
          (m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = refer('T')
            ..name = 'valueFor'
            ..types.add(
              TypeReference(
                (t) => t
                  ..symbol = 'T'
                  ..bound = DartTypes.core.object.nullable,
              ),
            )
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.amplifyCore.queryField(
                    modelIdentifierType,
                    modelType,
                    refer('T'),
                  )
                  ..name = 'field',
              ),
            )
            ..body = const Code('throw UnimplementedError();'),
        ),
      );
    });

    // Create the private implementation
    yield Class((c) {
      c
        ..name = '_${partialModelType.symbol}'
        ..extend = partialModelType;

      final parameters = <Parameter>[];
      for (final field in definition.fields.values) {
        c.fields.add(
          Field(
            (f) => f
              ..annotations.add(DartTypes.core.override)
              ..modifier = FieldModifier.final$
              ..type = field.type.reference
              ..name = field.name,
          ),
        );
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = field.type.isRequired
              ..toThis = true
              ..name = field.name,
          ),
        );
      }

      // The unnamed constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..optionalParameters.addAll(parameters)
            ..initializers.add(const Code('super._()')),
        ),
      );

      // The fromJson constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..body = const Code('throw UnimplementedError();'),
        ),
      );
    });
  }

  /// The model type is represented by a public interface, e.g `User`, whose
  /// public constructor is geared towards ease-of-use for common patterns,
  /// specifically around its handling of nested models.
  ///
  /// A separate, private implementation is used for the concrete model.
  Iterable<Class> get modelImpl sync* {
    // Create the public interface
    yield Class((c) {
      c
        ..abstract = true
        ..name = modelName
        ..extend = partialModelType
        ..implements.add(
          DartTypes.amplifyCore.model(
            modelIdentifierType,
            modelType,
          ),
        );

      // Add `classType` for model types
      c.fields.add(
        Field(
          (f) => f
            ..static = true
            ..modifier = FieldModifier.constant
            ..type = refer(modelTypeName)
            ..name = 'classType'
            ..assignment = refer(modelTypeName).constInstance([]).code,
        ),
      );

      final parameters = <Parameter>[];
      for (final field in definition.fields.values) {
        c.methods.add(
          Method(
            (m) => m
              ..returns = field.type.reference
              ..type = MethodType.getter
              ..name = field.name,
          ),
        );
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = field.type.isRequired
              ..type = field.type.reference
              ..name = field.name,
          ),
        );
      }

      // The public factory constructor which redirects to the private impl.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..optionalParameters.addAll(parameters)
            ..redirect = refer('_$modelName'),
        ),
      );

      // The private constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..name = '_'
            ..constant = true
            ..initializers.add(const Code('super._()')),
        ),
      );

      // The fromJson constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..body = const Code('throw UnimplementedError();'),
        ),
      );
    });

    // Create the private implementation
    yield Class((c) {
      c
        ..name = '_$modelName'
        ..extend = modelType;

      final parameters = <Parameter>[];
      for (final field in definition.fields.values) {
        c.fields.add(
          Field(
            (f) => f
              ..annotations.add(DartTypes.core.override)
              ..modifier = FieldModifier.final$
              ..type = field.type.reference
              ..name = field.name,
          ),
        );
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = field.type.isRequired
              ..toThis = true
              ..name = field.name,
          ),
        );
      }

      // The unnamed constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..optionalParameters.addAll(parameters)
            ..initializers.add(const Code('super._()')),
        ),
      );
    });
  }

  /// The remote model type is represented by a public interface, e.g
  /// `RemoteUser`, which is not instantiable, and a private implementation,
  /// e.g. `_RemoteUser extends RemoteUser` which is instantiated only via
  /// the `fromJson` method of the `ModelType`.
  Iterable<Class> get remoteModelImpl sync* {
    // Create the public interface
    yield Class((c) {
      c
        ..abstract = true
        ..name = 'Remote$modelName'
        ..extend = modelType
        ..implements.add(
          DartTypes.amplifyCore.remoteModel(
            modelIdentifierType,
            modelType,
          ),
        )
        ..constructors.add(
          Constructor(
            (ctor) => ctor
              ..name = '_'
              ..constant = true
              ..initializers.add(const Code('super._()')),
          ),
        );
    });

    // Create the private implementation
    yield Class((c) {
      c
        ..name = '_Remote$modelName'
        ..extend = remoteModelType;

      final parameters = <Parameter>[];
      final remoteMetadataFields = {
        'version': ModelField(
          name: 'version',
          type: const mipr.SchemaType.scalar(
            mipr.AppSyncScalar.int_,
            isRequired: true,
          ),
        ),
        'deleted': ModelField(
          name: 'deleted',
          type: const mipr.SchemaType.scalar(
            mipr.AppSyncScalar.boolean,
            isRequired: true,
          ),
        ),
        'lastChangedAt': ModelField(
          name: 'lastChangedAt',
          type: const mipr.SchemaType.scalar(
            mipr.AppSyncScalar.awsDateTime,
            isRequired: true,
          ),
        ),
      };
      final fields = SplayTreeMap<String, ModelField>.from(
        {
          ...remoteMetadataFields,
          ...definition.fields.toMap(),
        },
        (a, b) {
          // Sort synthetic fields last.
          final isSyntheticA = remoteMetadataFields.containsKey(a) &&
              !definition.fields.containsKey(a);
          final isSyntheticB = remoteMetadataFields.containsKey(b) &&
              !definition.fields.containsKey(b);
          if (isSyntheticA && isSyntheticB) {
            // Use insertion order
            return -1;
          }
          if (isSyntheticA) {
            return 1;
          }
          if (isSyntheticB) {
            return -1;
          }
          // Use insertion order
          return -1;
        },
      );
      for (final field in fields.values) {
        c.fields.add(
          Field(
            (f) => f
              ..annotations.add(DartTypes.core.override)
              ..modifier = FieldModifier.final$
              ..type = field.type.reference
              ..name = field.name,
          ),
        );
        parameters.add(
          Parameter(
            (p) => p
              ..named = true
              ..required = field.type.isRequired
              ..toThis = true
              ..name = field.name,
          ),
        );
      }

      // The unnamed constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..optionalParameters.addAll(parameters)
            ..initializers.add(const Code('super._()')),
        ),
      );

      // The fromJson constructor.
      c.constructors.add(
        Constructor(
          (ctor) => ctor
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(
              Parameter(
                (p) => p
                  ..type = DartTypes.core.json
                  ..name = 'json',
              ),
            )
            ..body = const Code('throw UnimplementedError();'),
        ),
      );
    });
  }
}
