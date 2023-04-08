// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_vpc_endpoint_connection_notifications_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpc_endpoint_connection_notifications_request.g.dart';

abstract class DeleteVpcEndpointConnectionNotificationsRequest
    with
        _i1.HttpInput<DeleteVpcEndpointConnectionNotificationsRequest>,
        _i2.AWSEquatable<DeleteVpcEndpointConnectionNotificationsRequest>
    implements
        Built<DeleteVpcEndpointConnectionNotificationsRequest,
            DeleteVpcEndpointConnectionNotificationsRequestBuilder> {
  factory DeleteVpcEndpointConnectionNotificationsRequest({
    bool? dryRun,
    required List<String> connectionNotificationIds,
  }) {
    dryRun ??= false;
    return _$DeleteVpcEndpointConnectionNotificationsRequest._(
      dryRun: dryRun,
      connectionNotificationIds: _i3.BuiltList(connectionNotificationIds),
    );
  }

  factory DeleteVpcEndpointConnectionNotificationsRequest.build(
      [void Function(DeleteVpcEndpointConnectionNotificationsRequestBuilder)
          updates]) = _$DeleteVpcEndpointConnectionNotificationsRequest;

  const DeleteVpcEndpointConnectionNotificationsRequest._();

  factory DeleteVpcEndpointConnectionNotificationsRequest.fromRequest(
    DeleteVpcEndpointConnectionNotificationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteVpcEndpointConnectionNotificationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcEndpointConnectionNotificationsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more notification IDs.
  _i3.BuiltList<String> get connectionNotificationIds;
  @override
  DeleteVpcEndpointConnectionNotificationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        connectionNotificationIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteVpcEndpointConnectionNotificationsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'connectionNotificationIds',
      connectionNotificationIds,
    );
    return helper.toString();
  }
}

class DeleteVpcEndpointConnectionNotificationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DeleteVpcEndpointConnectionNotificationsRequest> {
  const DeleteVpcEndpointConnectionNotificationsRequestEc2QuerySerializer()
      : super('DeleteVpcEndpointConnectionNotificationsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpcEndpointConnectionNotificationsRequest,
        _$DeleteVpcEndpointConnectionNotificationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcEndpointConnectionNotificationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcEndpointConnectionNotificationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ConnectionNotificationId':
          result.connectionNotificationIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    final payload = (object as DeleteVpcEndpointConnectionNotificationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpcEndpointConnectionNotificationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('ConnectionNotificationId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.connectionNotificationIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result;
  }
}
