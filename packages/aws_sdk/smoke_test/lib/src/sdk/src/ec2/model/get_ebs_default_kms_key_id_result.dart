// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_ebs_default_kms_key_id_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_ebs_default_kms_key_id_result.g.dart';

abstract class GetEbsDefaultKmsKeyIdResult
    with _i1.AWSEquatable<GetEbsDefaultKmsKeyIdResult>
    implements
        Built<GetEbsDefaultKmsKeyIdResult, GetEbsDefaultKmsKeyIdResultBuilder> {
  factory GetEbsDefaultKmsKeyIdResult({String? kmsKeyId}) {
    return _$GetEbsDefaultKmsKeyIdResult._(kmsKeyId: kmsKeyId);
  }

  factory GetEbsDefaultKmsKeyIdResult.build(
          [void Function(GetEbsDefaultKmsKeyIdResultBuilder) updates]) =
      _$GetEbsDefaultKmsKeyIdResult;

  const GetEbsDefaultKmsKeyIdResult._();

  /// Constructs a [GetEbsDefaultKmsKeyIdResult] from a [payload] and [response].
  factory GetEbsDefaultKmsKeyIdResult.fromResponse(
    GetEbsDefaultKmsKeyIdResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetEbsDefaultKmsKeyIdResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetEbsDefaultKmsKeyIdResultBuilder b) {}

  /// The Amazon Resource Name (ARN) of the default KMS key for encryption by default.
  String? get kmsKeyId;
  @override
  List<Object?> get props => [kmsKeyId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetEbsDefaultKmsKeyIdResult');
    helper.add(
      'kmsKeyId',
      kmsKeyId,
    );
    return helper.toString();
  }
}

class GetEbsDefaultKmsKeyIdResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetEbsDefaultKmsKeyIdResult> {
  const GetEbsDefaultKmsKeyIdResultEc2QuerySerializer()
      : super('GetEbsDefaultKmsKeyIdResult');

  @override
  Iterable<Type> get types => const [
        GetEbsDefaultKmsKeyIdResult,
        _$GetEbsDefaultKmsKeyIdResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetEbsDefaultKmsKeyIdResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEbsDefaultKmsKeyIdResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'kmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
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
    final payload = (object as GetEbsDefaultKmsKeyIdResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetEbsDefaultKmsKeyIdResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i2.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
