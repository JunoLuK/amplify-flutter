// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.advertise_byoip_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'advertise_byoip_cidr_request.g.dart';

abstract class AdvertiseByoipCidrRequest
    with
        _i1.HttpInput<AdvertiseByoipCidrRequest>,
        _i2.AWSEquatable<AdvertiseByoipCidrRequest>
    implements
        Built<AdvertiseByoipCidrRequest, AdvertiseByoipCidrRequestBuilder> {
  factory AdvertiseByoipCidrRequest({
    required String cidr,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AdvertiseByoipCidrRequest._(
      cidr: cidr,
      dryRun: dryRun,
    );
  }

  factory AdvertiseByoipCidrRequest.build(
          [void Function(AdvertiseByoipCidrRequestBuilder) updates]) =
      _$AdvertiseByoipCidrRequest;

  const AdvertiseByoipCidrRequest._();

  factory AdvertiseByoipCidrRequest.fromRequest(
    AdvertiseByoipCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AdvertiseByoipCidrRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AdvertiseByoipCidrRequestBuilder b) {
    b.dryRun = false;
  }

  /// The address range, in CIDR notation. This must be the exact range that you provisioned. You can't advertise only a portion of the provisioned range.
  String get cidr;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AdvertiseByoipCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidr,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AdvertiseByoipCidrRequest');
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class AdvertiseByoipCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AdvertiseByoipCidrRequest> {
  const AdvertiseByoipCidrRequestEc2QuerySerializer()
      : super('AdvertiseByoipCidrRequest');

  @override
  Iterable<Type> get types => const [
        AdvertiseByoipCidrRequest,
        _$AdvertiseByoipCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AdvertiseByoipCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdvertiseByoipCidrRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as AdvertiseByoipCidrRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AdvertiseByoipCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Cidr'))
      ..add(serializers.serialize(
        payload.cidr,
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
