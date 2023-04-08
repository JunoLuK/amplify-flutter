// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.attribute_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'attribute_value.g.dart';

/// Describes a value for a resource attribute that is a String.
abstract class AttributeValue
    with _i1.AWSEquatable<AttributeValue>
    implements Built<AttributeValue, AttributeValueBuilder> {
  /// Describes a value for a resource attribute that is a String.
  factory AttributeValue({String? value}) {
    return _$AttributeValue._(value: value);
  }

  /// Describes a value for a resource attribute that is a String.
  factory AttributeValue.build([void Function(AttributeValueBuilder) updates]) =
      _$AttributeValue;

  const AttributeValue._();

  static const List<_i2.SmithySerializer> serializers = [
    AttributeValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttributeValueBuilder b) {}

  /// The attribute value. The value is case-sensitive.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttributeValue');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class AttributeValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AttributeValue> {
  const AttributeValueEc2QuerySerializer() : super('AttributeValue');

  @override
  Iterable<Type> get types => const [
        AttributeValue,
        _$AttributeValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttributeValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'value':
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
    final payload = (object as AttributeValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AttributeValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
