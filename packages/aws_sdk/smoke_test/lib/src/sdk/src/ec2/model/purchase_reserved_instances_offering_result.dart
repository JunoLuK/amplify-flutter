// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.purchase_reserved_instances_offering_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'purchase_reserved_instances_offering_result.g.dart';

/// Contains the output of PurchaseReservedInstancesOffering.
abstract class PurchaseReservedInstancesOfferingResult
    with
        _i1.AWSEquatable<PurchaseReservedInstancesOfferingResult>
    implements
        Built<PurchaseReservedInstancesOfferingResult,
            PurchaseReservedInstancesOfferingResultBuilder> {
  /// Contains the output of PurchaseReservedInstancesOffering.
  factory PurchaseReservedInstancesOfferingResult(
      {String? reservedInstancesId}) {
    return _$PurchaseReservedInstancesOfferingResult._(
        reservedInstancesId: reservedInstancesId);
  }

  /// Contains the output of PurchaseReservedInstancesOffering.
  factory PurchaseReservedInstancesOfferingResult.build(
      [void Function(PurchaseReservedInstancesOfferingResultBuilder)
          updates]) = _$PurchaseReservedInstancesOfferingResult;

  const PurchaseReservedInstancesOfferingResult._();

  /// Constructs a [PurchaseReservedInstancesOfferingResult] from a [payload] and [response].
  factory PurchaseReservedInstancesOfferingResult.fromResponse(
    PurchaseReservedInstancesOfferingResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    PurchaseReservedInstancesOfferingResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseReservedInstancesOfferingResultBuilder b) {}

  /// The IDs of the purchased Reserved Instances. If your purchase crosses into a discounted pricing tier, the final Reserved Instances IDs might change. For more information, see [Crossing pricing tiers](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-reserved-instances-application.html#crossing-pricing-tiers) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get reservedInstancesId;
  @override
  List<Object?> get props => [reservedInstancesId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PurchaseReservedInstancesOfferingResult');
    helper.add(
      'reservedInstancesId',
      reservedInstancesId,
    );
    return helper.toString();
  }
}

class PurchaseReservedInstancesOfferingResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<PurchaseReservedInstancesOfferingResult> {
  const PurchaseReservedInstancesOfferingResultEc2QuerySerializer()
      : super('PurchaseReservedInstancesOfferingResult');

  @override
  Iterable<Type> get types => const [
        PurchaseReservedInstancesOfferingResult,
        _$PurchaseReservedInstancesOfferingResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseReservedInstancesOfferingResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseReservedInstancesOfferingResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservedInstancesId':
          if (value != null) {
            result.reservedInstancesId = (serializers.deserialize(
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
    final payload = (object as PurchaseReservedInstancesOfferingResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PurchaseReservedInstancesOfferingResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstancesId != null) {
      result
        ..add(const _i2.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          payload.reservedInstancesId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
