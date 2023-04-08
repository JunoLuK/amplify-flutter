// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.export; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export.g.dart';

/// The `Export` structure describes the exported output values for a stack.
abstract class Export
    with _i1.AWSEquatable<Export>
    implements Built<Export, ExportBuilder> {
  /// The `Export` structure describes the exported output values for a stack.
  factory Export({
    String? exportingStackId,
    String? name,
    String? value,
  }) {
    return _$Export._(
      exportingStackId: exportingStackId,
      name: name,
      value: value,
    );
  }

  /// The `Export` structure describes the exported output values for a stack.
  factory Export.build([void Function(ExportBuilder) updates]) = _$Export;

  const Export._();

  static const List<_i2.SmithySerializer> serializers = [
    ExportAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportBuilder b) {}

  /// The stack that contains the exported output name and value.
  String? get exportingStackId;

  /// The name of exported output value. Use this name and the `Fn::ImportValue` function to import the associated value into other stacks. The name is defined in the `Export` field in the associated stack's `Outputs` section.
  String? get name;

  /// The value of the exported output, such as a resource physical ID. This value is defined in the `Export` field in the associated stack's `Outputs` section.
  String? get value;
  @override
  List<Object?> get props => [
        exportingStackId,
        name,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Export');
    helper.add(
      'exportingStackId',
      exportingStackId,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class ExportAwsQuerySerializer extends _i2.StructuredSmithySerializer<Export> {
  const ExportAwsQuerySerializer() : super('Export');

  @override
  Iterable<Type> get types => const [
        Export,
        _$Export,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Export deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ExportingStackId':
          if (value != null) {
            result.exportingStackId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Export);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ExportResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.exportingStackId != null) {
      result
        ..add(const _i2.XmlElementName('ExportingStackId'))
        ..add(serializers.serialize(
          payload.exportingStackId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.value != null) {
      result
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
