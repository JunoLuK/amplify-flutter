// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.permissions_boundary_decision_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'permissions_boundary_decision_detail.g.dart';

/// Contains information about the effect that a permissions boundary has on a policy simulation when the boundary is applied to an IAM entity.
abstract class PermissionsBoundaryDecisionDetail
    with
        _i1.AWSEquatable<PermissionsBoundaryDecisionDetail>
    implements
        Built<PermissionsBoundaryDecisionDetail,
            PermissionsBoundaryDecisionDetailBuilder> {
  /// Contains information about the effect that a permissions boundary has on a policy simulation when the boundary is applied to an IAM entity.
  factory PermissionsBoundaryDecisionDetail(
      {bool? allowedByPermissionsBoundary}) {
    return _$PermissionsBoundaryDecisionDetail._(
        allowedByPermissionsBoundary: allowedByPermissionsBoundary);
  }

  /// Contains information about the effect that a permissions boundary has on a policy simulation when the boundary is applied to an IAM entity.
  factory PermissionsBoundaryDecisionDetail.build(
          [void Function(PermissionsBoundaryDecisionDetailBuilder) updates]) =
      _$PermissionsBoundaryDecisionDetail;

  const PermissionsBoundaryDecisionDetail._();

  static const List<_i2.SmithySerializer> serializers = [
    PermissionsBoundaryDecisionDetailAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PermissionsBoundaryDecisionDetailBuilder b) {}

  /// Specifies whether an action is allowed by a permissions boundary that is applied to an IAM entity (user or role). A value of `true` means that the permissions boundary does not deny the action. This means that the policy includes an `Allow` statement that matches the request. In this case, if an identity-based policy also allows the action, the request is allowed. A value of `false` means that either the requested action is not allowed (implicitly denied) or that the action is explicitly denied by the permissions boundary. In both of these cases, the action is not allowed, regardless of the identity-based policy.
  bool? get allowedByPermissionsBoundary;
  @override
  List<Object?> get props => [allowedByPermissionsBoundary];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PermissionsBoundaryDecisionDetail');
    helper.add(
      'allowedByPermissionsBoundary',
      allowedByPermissionsBoundary,
    );
    return helper.toString();
  }
}

class PermissionsBoundaryDecisionDetailAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PermissionsBoundaryDecisionDetail> {
  const PermissionsBoundaryDecisionDetailAwsQuerySerializer()
      : super('PermissionsBoundaryDecisionDetail');

  @override
  Iterable<Type> get types => const [
        PermissionsBoundaryDecisionDetail,
        _$PermissionsBoundaryDecisionDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PermissionsBoundaryDecisionDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionsBoundaryDecisionDetailBuilder();
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
        case 'AllowedByPermissionsBoundary':
          if (value != null) {
            result.allowedByPermissionsBoundary = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as PermissionsBoundaryDecisionDetail);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PermissionsBoundaryDecisionDetailResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.allowedByPermissionsBoundary != null) {
      result
        ..add(const _i2.XmlElementName('AllowedByPermissionsBoundary'))
        ..add(serializers.serialize(
          payload.allowedByPermissionsBoundary!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
