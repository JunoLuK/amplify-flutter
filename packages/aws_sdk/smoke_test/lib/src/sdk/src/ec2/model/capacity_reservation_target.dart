// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.capacity_reservation_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'capacity_reservation_target.g.dart';

/// Describes a target Capacity Reservation or Capacity Reservation group.
abstract class CapacityReservationTarget
    with _i1.AWSEquatable<CapacityReservationTarget>
    implements
        Built<CapacityReservationTarget, CapacityReservationTargetBuilder> {
  /// Describes a target Capacity Reservation or Capacity Reservation group.
  factory CapacityReservationTarget({
    String? capacityReservationId,
    String? capacityReservationResourceGroupArn,
  }) {
    return _$CapacityReservationTarget._(
      capacityReservationId: capacityReservationId,
      capacityReservationResourceGroupArn: capacityReservationResourceGroupArn,
    );
  }

  /// Describes a target Capacity Reservation or Capacity Reservation group.
  factory CapacityReservationTarget.build(
          [void Function(CapacityReservationTargetBuilder) updates]) =
      _$CapacityReservationTarget;

  const CapacityReservationTarget._();

  static const List<_i2.SmithySerializer> serializers = [
    CapacityReservationTargetEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityReservationTargetBuilder b) {}

  /// The ID of the Capacity Reservation in which to run the instance.
  String? get capacityReservationId;

  /// The ARN of the Capacity Reservation resource group in which to run the instance.
  String? get capacityReservationResourceGroupArn;
  @override
  List<Object?> get props => [
        capacityReservationId,
        capacityReservationResourceGroupArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityReservationTarget');
    helper.add(
      'capacityReservationId',
      capacityReservationId,
    );
    helper.add(
      'capacityReservationResourceGroupArn',
      capacityReservationResourceGroupArn,
    );
    return helper.toString();
  }
}

class CapacityReservationTargetEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CapacityReservationTarget> {
  const CapacityReservationTargetEc2QuerySerializer()
      : super('CapacityReservationTarget');

  @override
  Iterable<Type> get types => const [
        CapacityReservationTarget,
        _$CapacityReservationTarget,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CapacityReservationId':
          if (value != null) {
            result.capacityReservationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CapacityReservationResourceGroupArn':
          if (value != null) {
            result.capacityReservationResourceGroupArn =
                (serializers.deserialize(
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
    final payload = (object as CapacityReservationTarget);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CapacityReservationTargetResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityReservationId != null) {
      result
        ..add(const _i2.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          payload.capacityReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityReservationResourceGroupArn != null) {
      result
        ..add(const _i2.XmlElementName('CapacityReservationResourceGroupArn'))
        ..add(serializers.serialize(
          payload.capacityReservationResourceGroupArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
