// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_resource_config_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/chronological_order.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i3;

part 'get_resource_config_history_request.g.dart';

/// The input for the GetResourceConfigHistory action.
abstract class GetResourceConfigHistoryRequest
    with
        _i1.HttpInput<GetResourceConfigHistoryRequest>,
        _i2.AWSEquatable<GetResourceConfigHistoryRequest>
    implements
        Built<GetResourceConfigHistoryRequest,
            GetResourceConfigHistoryRequestBuilder> {
  /// The input for the GetResourceConfigHistory action.
  factory GetResourceConfigHistoryRequest({
    required _i3.ResourceType resourceType,
    required String resourceId,
    DateTime? laterTime,
    DateTime? earlierTime,
    _i4.ChronologicalOrder? chronologicalOrder,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetResourceConfigHistoryRequest._(
      resourceType: resourceType,
      resourceId: resourceId,
      laterTime: laterTime,
      earlierTime: earlierTime,
      chronologicalOrder: chronologicalOrder,
      limit: limit,
      nextToken: nextToken,
    );
  }

  /// The input for the GetResourceConfigHistory action.
  factory GetResourceConfigHistoryRequest.build(
          [void Function(GetResourceConfigHistoryRequestBuilder) updates]) =
      _$GetResourceConfigHistoryRequest;

  const GetResourceConfigHistoryRequest._();

  factory GetResourceConfigHistoryRequest.fromRequest(
    GetResourceConfigHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetResourceConfigHistoryRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourceConfigHistoryRequestBuilder b) {
    b.limit = 0;
  }

  /// The resource type.
  _i3.ResourceType get resourceType;

  /// The ID of the resource (for example., `sg-xxxxxx`).
  String get resourceId;

  /// The time stamp that indicates a later time. If not specified, current time is taken.
  DateTime? get laterTime;

  /// The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start when the first configuration item was recorded.
  DateTime? get earlierTime;

  /// The chronological order for configuration items listed. By default, the results are listed in reverse chronological order.
  _i4.ChronologicalOrder? get chronologicalOrder;

  /// The maximum number of configuration items returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetResourceConfigHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
        laterTime,
        earlierTime,
        chronologicalOrder,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetResourceConfigHistoryRequest');
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'laterTime',
      laterTime,
    );
    helper.add(
      'earlierTime',
      earlierTime,
    );
    helper.add(
      'chronologicalOrder',
      chronologicalOrder,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetResourceConfigHistoryRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetResourceConfigHistoryRequest> {
  const GetResourceConfigHistoryRequestAwsJson11Serializer()
      : super('GetResourceConfigHistoryRequest');

  @override
  Iterable<Type> get types => const [
        GetResourceConfigHistoryRequest,
        _$GetResourceConfigHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetResourceConfigHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetResourceConfigHistoryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.ResourceType),
          ) as _i3.ResourceType);
          break;
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'laterTime':
          if (value != null) {
            result.laterTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'earlierTime':
          if (value != null) {
            result.earlierTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'chronologicalOrder':
          if (value != null) {
            result.chronologicalOrder = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ChronologicalOrder),
            ) as _i4.ChronologicalOrder);
          }
          break;
        case 'limit':
          result.limit = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as GetResourceConfigHistoryRequest);
    final result = <Object?>[
      'resourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(_i3.ResourceType),
      ),
      'resourceId',
      serializers.serialize(
        payload.resourceId,
        specifiedType: const FullType(String),
      ),
      'limit',
      serializers.serialize(
        payload.limit,
        specifiedType: const FullType(int),
      ),
    ];
    if (payload.laterTime != null) {
      result
        ..add('laterTime')
        ..add(serializers.serialize(
          payload.laterTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.earlierTime != null) {
      result
        ..add('earlierTime')
        ..add(serializers.serialize(
          payload.earlierTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.chronologicalOrder != null) {
      result
        ..add('chronologicalOrder')
        ..add(serializers.serialize(
          payload.chronologicalOrder!,
          specifiedType: const FullType(_i4.ChronologicalOrder),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('nextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
