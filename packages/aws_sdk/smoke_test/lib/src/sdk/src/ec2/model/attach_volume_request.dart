// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.attach_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'attach_volume_request.g.dart';

abstract class AttachVolumeRequest
    with
        _i1.HttpInput<AttachVolumeRequest>,
        _i2.AWSEquatable<AttachVolumeRequest>
    implements Built<AttachVolumeRequest, AttachVolumeRequestBuilder> {
  factory AttachVolumeRequest({
    required String device,
    required String instanceId,
    required String volumeId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AttachVolumeRequest._(
      device: device,
      instanceId: instanceId,
      volumeId: volumeId,
      dryRun: dryRun,
    );
  }

  factory AttachVolumeRequest.build(
          [void Function(AttachVolumeRequestBuilder) updates]) =
      _$AttachVolumeRequest;

  const AttachVolumeRequest._();

  factory AttachVolumeRequest.fromRequest(
    AttachVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AttachVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachVolumeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The device name (for example, `/dev/sdh` or `xvdh`).
  String get device;

  /// The ID of the instance.
  String get instanceId;

  /// The ID of the EBS volume. The volume and instance must be within the same Availability Zone.
  String get volumeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AttachVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        device,
        instanceId,
        volumeId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachVolumeRequest');
    helper.add(
      'device',
      device,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class AttachVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AttachVolumeRequest> {
  const AttachVolumeRequestEc2QuerySerializer() : super('AttachVolumeRequest');

  @override
  Iterable<Type> get types => const [
        AttachVolumeRequest,
        _$AttachVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Device':
          result.device = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'dryRun':
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
    final payload = (object as AttachVolumeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AttachVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Device'))
      ..add(serializers.serialize(
        payload.device,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('VolumeId'))
      ..add(serializers.serialize(
        payload.volumeId,
        specifiedType: const FullType(String),
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
