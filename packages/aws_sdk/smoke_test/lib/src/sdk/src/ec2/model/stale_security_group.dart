// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.stale_security_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/stale_ip_permission.dart'
    as _i2;

part 'stale_security_group.g.dart';

/// Describes a stale security group (a security group that contains stale rules).
abstract class StaleSecurityGroup
    with _i1.AWSEquatable<StaleSecurityGroup>
    implements Built<StaleSecurityGroup, StaleSecurityGroupBuilder> {
  /// Describes a stale security group (a security group that contains stale rules).
  factory StaleSecurityGroup({
    String? description,
    String? groupId,
    String? groupName,
    List<_i2.StaleIpPermission>? staleIpPermissions,
    List<_i2.StaleIpPermission>? staleIpPermissionsEgress,
    String? vpcId,
  }) {
    return _$StaleSecurityGroup._(
      description: description,
      groupId: groupId,
      groupName: groupName,
      staleIpPermissions:
          staleIpPermissions == null ? null : _i3.BuiltList(staleIpPermissions),
      staleIpPermissionsEgress: staleIpPermissionsEgress == null
          ? null
          : _i3.BuiltList(staleIpPermissionsEgress),
      vpcId: vpcId,
    );
  }

  /// Describes a stale security group (a security group that contains stale rules).
  factory StaleSecurityGroup.build(
          [void Function(StaleSecurityGroupBuilder) updates]) =
      _$StaleSecurityGroup;

  const StaleSecurityGroup._();

  static const List<_i4.SmithySerializer> serializers = [
    StaleSecurityGroupEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StaleSecurityGroupBuilder b) {}

  /// The description of the security group.
  String? get description;

  /// The ID of the security group.
  String? get groupId;

  /// The name of the security group.
  String? get groupName;

  /// Information about the stale inbound rules in the security group.
  _i3.BuiltList<_i2.StaleIpPermission>? get staleIpPermissions;

  /// Information about the stale outbound rules in the security group.
  _i3.BuiltList<_i2.StaleIpPermission>? get staleIpPermissionsEgress;

  /// The ID of the VPC for the security group.
  String? get vpcId;
  @override
  List<Object?> get props => [
        description,
        groupId,
        groupName,
        staleIpPermissions,
        staleIpPermissionsEgress,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StaleSecurityGroup');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'staleIpPermissions',
      staleIpPermissions,
    );
    helper.add(
      'staleIpPermissionsEgress',
      staleIpPermissionsEgress,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class StaleSecurityGroupEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<StaleSecurityGroup> {
  const StaleSecurityGroupEc2QuerySerializer() : super('StaleSecurityGroup');

  @override
  Iterable<Type> get types => const [
        StaleSecurityGroup,
        _$StaleSecurityGroup,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StaleSecurityGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StaleSecurityGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupId':
          if (value != null) {
            result.groupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'staleIpPermissions':
          if (value != null) {
            result.staleIpPermissions.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.StaleIpPermission)],
              ),
            ) as _i3.BuiltList<_i2.StaleIpPermission>));
          }
          break;
        case 'staleIpPermissionsEgress':
          if (value != null) {
            result.staleIpPermissionsEgress
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.StaleIpPermission)],
              ),
            ) as _i3.BuiltList<_i2.StaleIpPermission>));
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
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
    final payload = (object as StaleSecurityGroup);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StaleSecurityGroupResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i4.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupId != null) {
      result
        ..add(const _i4.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i4.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.staleIpPermissions != null) {
      result
        ..add(const _i4.XmlElementName('StaleIpPermissions'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.staleIpPermissions!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StaleIpPermission)],
          ),
        ));
    }
    if (payload.staleIpPermissionsEgress != null) {
      result
        ..add(const _i4.XmlElementName('StaleIpPermissionsEgress'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.staleIpPermissionsEgress!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StaleIpPermission)],
          ),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i4.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
