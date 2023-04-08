// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_associated_ipv6_pool_cidrs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_associated_ipv6_pool_cidrs_request.g.dart';

abstract class GetAssociatedIpv6PoolCidrsRequest
    with
        _i1.HttpInput<GetAssociatedIpv6PoolCidrsRequest>,
        _i2.AWSEquatable<GetAssociatedIpv6PoolCidrsRequest>
    implements
        Built<GetAssociatedIpv6PoolCidrsRequest,
            GetAssociatedIpv6PoolCidrsRequestBuilder> {
  factory GetAssociatedIpv6PoolCidrsRequest({
    required String poolId,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$GetAssociatedIpv6PoolCidrsRequest._(
      poolId: poolId,
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory GetAssociatedIpv6PoolCidrsRequest.build(
          [void Function(GetAssociatedIpv6PoolCidrsRequestBuilder) updates]) =
      _$GetAssociatedIpv6PoolCidrsRequest;

  const GetAssociatedIpv6PoolCidrsRequest._();

  factory GetAssociatedIpv6PoolCidrsRequest.fromRequest(
    GetAssociatedIpv6PoolCidrsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetAssociatedIpv6PoolCidrsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAssociatedIpv6PoolCidrsRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The ID of the IPv6 address pool.
  String get poolId;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetAssociatedIpv6PoolCidrsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        poolId,
        nextToken,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAssociatedIpv6PoolCidrsRequest');
    helper.add(
      'poolId',
      poolId,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class GetAssociatedIpv6PoolCidrsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetAssociatedIpv6PoolCidrsRequest> {
  const GetAssociatedIpv6PoolCidrsRequestEc2QuerySerializer()
      : super('GetAssociatedIpv6PoolCidrsRequest');

  @override
  Iterable<Type> get types => const [
        GetAssociatedIpv6PoolCidrsRequest,
        _$GetAssociatedIpv6PoolCidrsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAssociatedIpv6PoolCidrsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAssociatedIpv6PoolCidrsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'PoolId':
          result.poolId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as GetAssociatedIpv6PoolCidrsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetAssociatedIpv6PoolCidrsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('PoolId'))
      ..add(serializers.serialize(
        payload.poolId,
        specifiedType: const FullType(String),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
