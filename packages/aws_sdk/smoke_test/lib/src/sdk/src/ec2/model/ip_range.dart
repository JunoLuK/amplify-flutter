// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ip_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ip_range.g.dart';

/// Describes an IPv4 range.
abstract class IpRange
    with _i1.AWSEquatable<IpRange>
    implements Built<IpRange, IpRangeBuilder> {
  /// Describes an IPv4 range.
  factory IpRange({
    String? cidrIp,
    String? description,
  }) {
    return _$IpRange._(
      cidrIp: cidrIp,
      description: description,
    );
  }

  /// Describes an IPv4 range.
  factory IpRange.build([void Function(IpRangeBuilder) updates]) = _$IpRange;

  const IpRange._();

  static const List<_i2.SmithySerializer> serializers = [
    IpRangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpRangeBuilder b) {}

  /// The IPv4 CIDR range. You can either specify a CIDR range or a source security group, not both. To specify a single IPv4 address, use the /32 prefix length.
  String? get cidrIp;

  /// A description for the security group rule that references this IPv4 address range.
  ///
  /// Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=&;{}!$*
  String? get description;
  @override
  List<Object?> get props => [
        cidrIp,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpRange');
    helper.add(
      'cidrIp',
      cidrIp,
    );
    helper.add(
      'description',
      description,
    );
    return helper.toString();
  }
}

class IpRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpRange> {
  const IpRangeEc2QuerySerializer() : super('IpRange');

  @override
  Iterable<Type> get types => const [
        IpRange,
        _$IpRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidrIp':
          if (value != null) {
            result.cidrIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
    final payload = (object as IpRange);
    final result = <Object?>[
      const _i2.XmlElementName(
        'IpRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidrIp != null) {
      result
        ..add(const _i2.XmlElementName('CidrIp'))
        ..add(serializers.serialize(
          payload.cidrIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
