// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_reserved_instances_listing_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_listing.dart'
    as _i2;

part 'cancel_reserved_instances_listing_result.g.dart';

/// Contains the output of CancelReservedInstancesListing.
abstract class CancelReservedInstancesListingResult
    with
        _i1.AWSEquatable<CancelReservedInstancesListingResult>
    implements
        Built<CancelReservedInstancesListingResult,
            CancelReservedInstancesListingResultBuilder> {
  /// Contains the output of CancelReservedInstancesListing.
  factory CancelReservedInstancesListingResult(
      {List<_i2.ReservedInstancesListing>? reservedInstancesListings}) {
    return _$CancelReservedInstancesListingResult._(
        reservedInstancesListings: reservedInstancesListings == null
            ? null
            : _i3.BuiltList(reservedInstancesListings));
  }

  /// Contains the output of CancelReservedInstancesListing.
  factory CancelReservedInstancesListingResult.build(
      [void Function(CancelReservedInstancesListingResultBuilder)
          updates]) = _$CancelReservedInstancesListingResult;

  const CancelReservedInstancesListingResult._();

  /// Constructs a [CancelReservedInstancesListingResult] from a [payload] and [response].
  factory CancelReservedInstancesListingResult.fromResponse(
    CancelReservedInstancesListingResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CancelReservedInstancesListingResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelReservedInstancesListingResultBuilder b) {}

  /// The Reserved Instance listing.
  _i3.BuiltList<_i2.ReservedInstancesListing>? get reservedInstancesListings;
  @override
  List<Object?> get props => [reservedInstancesListings];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelReservedInstancesListingResult');
    helper.add(
      'reservedInstancesListings',
      reservedInstancesListings,
    );
    return helper.toString();
  }
}

class CancelReservedInstancesListingResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<CancelReservedInstancesListingResult> {
  const CancelReservedInstancesListingResultEc2QuerySerializer()
      : super('CancelReservedInstancesListingResult');

  @override
  Iterable<Type> get types => const [
        CancelReservedInstancesListingResult,
        _$CancelReservedInstancesListingResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelReservedInstancesListingResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelReservedInstancesListingResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservedInstancesListingsSet':
          if (value != null) {
            result.reservedInstancesListings
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ReservedInstancesListing)],
              ),
            ) as _i3.BuiltList<_i2.ReservedInstancesListing>));
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
    final payload = (object as CancelReservedInstancesListingResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CancelReservedInstancesListingResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstancesListings != null) {
      result
        ..add(const _i4.XmlElementName('ReservedInstancesListingsSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.reservedInstancesListings!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ReservedInstancesListing)],
          ),
        ));
    }
    return result;
  }
}
