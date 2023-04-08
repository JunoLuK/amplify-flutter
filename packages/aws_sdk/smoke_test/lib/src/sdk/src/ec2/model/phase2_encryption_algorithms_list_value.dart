// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.phase2_encryption_algorithms_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase2_encryption_algorithms_list_value.g.dart';

/// The encryption algorithm for phase 2 IKE negotiations.
abstract class Phase2EncryptionAlgorithmsListValue
    with
        _i1.AWSEquatable<Phase2EncryptionAlgorithmsListValue>
    implements
        Built<Phase2EncryptionAlgorithmsListValue,
            Phase2EncryptionAlgorithmsListValueBuilder> {
  /// The encryption algorithm for phase 2 IKE negotiations.
  factory Phase2EncryptionAlgorithmsListValue({String? value}) {
    return _$Phase2EncryptionAlgorithmsListValue._(value: value);
  }

  /// The encryption algorithm for phase 2 IKE negotiations.
  factory Phase2EncryptionAlgorithmsListValue.build(
          [void Function(Phase2EncryptionAlgorithmsListValueBuilder) updates]) =
      _$Phase2EncryptionAlgorithmsListValue;

  const Phase2EncryptionAlgorithmsListValue._();

  static const List<_i2.SmithySerializer> serializers = [
    Phase2EncryptionAlgorithmsListValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Phase2EncryptionAlgorithmsListValueBuilder b) {}

  /// The encryption algorithm.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Phase2EncryptionAlgorithmsListValue');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class Phase2EncryptionAlgorithmsListValueEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<Phase2EncryptionAlgorithmsListValue> {
  const Phase2EncryptionAlgorithmsListValueEc2QuerySerializer()
      : super('Phase2EncryptionAlgorithmsListValue');

  @override
  Iterable<Type> get types => const [
        Phase2EncryptionAlgorithmsListValue,
        _$Phase2EncryptionAlgorithmsListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase2EncryptionAlgorithmsListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase2EncryptionAlgorithmsListValueBuilder();
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
    final payload = (object as Phase2EncryptionAlgorithmsListValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Phase2EncryptionAlgorithmsListValueResponse',
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
