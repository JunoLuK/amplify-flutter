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

import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/language.dart';
import 'package:amplify_codegen/src/helpers/model.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';

/// Helpers for [TypeNode].
extension TypeHelpers on TypeNode {
  /// Whether `this` is a list type.
  bool get isList => this is ListTypeNode;

  /// `this` as a list type.
  ListTypeNode get asList => this as ListTypeNode;

  /// The name of the base type.
  ///
  /// If this is a list type, the name of the wrapped type.
  String get typeName {
    if (this is NamedTypeNode) {
      return (this as NamedTypeNode).name.value;
    } else if (this is ListTypeNode) {
      return (this as ListTypeNode).type.typeName;
    }
    throw ArgumentError(runtimeType);
  }

  /// The type of model field this represents.
  SchemaType schemaType({
    required Map<String, ObjectTypeDefinitionNode> models,
    required Map<String, EnumTypeDefinitionNode> enums,
  }) {
    final node = this;
    if (node is NamedTypeNode) {
      AppSyncScalar? scalarType;
      try {
        scalarType =
            (AppSyncScalar.serializer as PrimitiveSerializer<AppSyncScalar>)
                .deserialize(
          Serializers(),
          node.name.value,
        );
      } on Object {
        // no-op
      }
      if (scalarType != null) {
        return SchemaType.scalar(scalarType, isRequired: node.isNonNull);
      }
      final modelName = node.name.value;
      final objectNode = models[modelName];
      if (objectNode == null) {
        assert(
          enums.containsKey(modelName),
          'Must be an enum if not a scalar or recognized model',
        );
        return SchemaType.enum_(modelName, isRequired: node.isNonNull);
      }
      final isNonModel = !objectNode.hasDirective('model');
      if (isNonModel) {
        return SchemaType.nonModel(modelName, isRequired: node.isNonNull);
      }
      return SchemaType.model(modelName, isRequired: node.isNonNull);
    } else if (node is ListTypeNode) {
      final valueType = node.type.schemaType(
        models: models,
        enums: enums,
      );
      return SchemaType.list(valueType, isRequired: node.isNonNull);
    }
    throw ArgumentError(node.runtimeType);
  }
}

// Cache for type references.
final _typeReferences = Expando<Reference>();

/// Helpers for [SchemaType].
extension SchemaTypeHelpers on SchemaType {
  /// Whether this type represents an enum.
  bool get isEnum => this is EnumType;

  /// Whether this type represents a Model.
  bool get isModel => this is ModelType;

  /// Whether this type represents a list.
  bool get isList => this is ListType;

  /// The code_builder reference for `this`.
  Reference get reference {
    final type = this;
    final cached = _typeReferences[this];
    if (cached != null) {
      return cached;
    }
    if (type is ListType) {
      return _typeReferences[this] = DartTypes.core
          .list(type.elementType.reference)
          .withNullable(!type.isRequired);
    }
    if (type is ScalarType) {
      return _typeReferences[this] =
          DartTypes.scalar(type.value).withNullable(!type.isRequired);
    }
    return _typeReferences[this] = Reference(
      type.name.pascalCase,
      '${type.name.snakeCase}.dart',
    ).withNullable(!type.isRequired);
  }
}

/// Helpers for [TypeDefinitionNode].
extension TypeDefinitionHelpers on TypeDefinitionNode {
  /// This type's name as a library name.
  String get libraryName {
    final libName = name.value.snakeCase;
    if (hardReservedWords.contains(libName)) {
      return '${libName}_';
    }
    return libName;
  }
}

/// Helpers for [Reference] types.
extension ReferenceHelpers on Reference {
  /// `this` as a [TypeReference].
  TypeReference get typeRef =>
      this is TypeReference ? this as TypeReference : type as TypeReference;

  /// Returns a nullable version of `this`.
  TypeReference get nullable {
    return typeRef.rebuild((t) => t.isNullable = true);
  }

  /// Returns a non-nullable version of `this`.
  TypeReference get nonNull {
    return typeRef.rebuild((t) => t.isNullable = false);
  }

  /// Returns a version of `this` with nullability equal to [isNullable].
  // ignore: avoid_positional_boolean_parameters
  TypeReference withNullable(bool isNullable) {
    return isNullable ? nullable : nonNull;
  }
}
