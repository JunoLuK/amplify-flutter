// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_remediation_execution_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart'
    as _i3;

part 'describe_remediation_execution_status_request.g.dart';

abstract class DescribeRemediationExecutionStatusRequest
    with
        _i1.HttpInput<DescribeRemediationExecutionStatusRequest>,
        _i2.AWSEquatable<DescribeRemediationExecutionStatusRequest>
    implements
        Built<DescribeRemediationExecutionStatusRequest,
            DescribeRemediationExecutionStatusRequestBuilder> {
  factory DescribeRemediationExecutionStatusRequest({
    required String configRuleName,
    List<_i3.ResourceKey>? resourceKeys,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeRemediationExecutionStatusRequest._(
      configRuleName: configRuleName,
      resourceKeys: resourceKeys == null ? null : _i4.BuiltList(resourceKeys),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeRemediationExecutionStatusRequest.build(
      [void Function(DescribeRemediationExecutionStatusRequestBuilder)
          updates]) = _$DescribeRemediationExecutionStatusRequest;

  const DescribeRemediationExecutionStatusRequest._();

  factory DescribeRemediationExecutionStatusRequest.fromRequest(
    DescribeRemediationExecutionStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeRemediationExecutionStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRemediationExecutionStatusRequestBuilder b) {
    b.limit = 0;
  }

  /// A list of Config rule names.
  String get configRuleName;

  /// A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.
  _i4.BuiltList<_i3.ResourceKey>? get resourceKeys;

  /// The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeRemediationExecutionStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceKeys,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeRemediationExecutionStatusRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'resourceKeys',
      resourceKeys,
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

class DescribeRemediationExecutionStatusRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeRemediationExecutionStatusRequest> {
  const DescribeRemediationExecutionStatusRequestAwsJson11Serializer()
      : super('DescribeRemediationExecutionStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeRemediationExecutionStatusRequest,
        _$DescribeRemediationExecutionStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRemediationExecutionStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRemediationExecutionStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceKeys':
          if (value != null) {
            result.resourceKeys.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ResourceKey)],
              ),
            ) as _i4.BuiltList<_i3.ResourceKey>));
          }
          break;
        case 'Limit':
          result.limit = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'NextToken':
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
    final payload = (object as DescribeRemediationExecutionStatusRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        payload.limit,
        specifiedType: const FullType(int),
      ),
    ];
    if (payload.resourceKeys != null) {
      result
        ..add('ResourceKeys')
        ..add(serializers.serialize(
          payload.resourceKeys!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ResourceKey)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
