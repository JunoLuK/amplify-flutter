// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_maintenance_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_auto_recovery_state.dart'
    as _i2;

part 'launch_template_instance_maintenance_options.g.dart';

/// The maintenance options of your instance.
abstract class LaunchTemplateInstanceMaintenanceOptions
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMaintenanceOptions>
    implements
        Built<LaunchTemplateInstanceMaintenanceOptions,
            LaunchTemplateInstanceMaintenanceOptionsBuilder> {
  /// The maintenance options of your instance.
  factory LaunchTemplateInstanceMaintenanceOptions(
      {_i2.LaunchTemplateAutoRecoveryState? autoRecovery}) {
    return _$LaunchTemplateInstanceMaintenanceOptions._(
        autoRecovery: autoRecovery);
  }

  /// The maintenance options of your instance.
  factory LaunchTemplateInstanceMaintenanceOptions.build(
      [void Function(LaunchTemplateInstanceMaintenanceOptionsBuilder)
          updates]) = _$LaunchTemplateInstanceMaintenanceOptions;

  const LaunchTemplateInstanceMaintenanceOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateInstanceMaintenanceOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMaintenanceOptionsBuilder b) {}

  /// Disables the automatic recovery behavior of your instance or sets it to default.
  _i2.LaunchTemplateAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [autoRecovery];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateInstanceMaintenanceOptions');
    helper.add(
      'autoRecovery',
      autoRecovery,
    );
    return helper.toString();
  }
}

class LaunchTemplateInstanceMaintenanceOptionsEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<LaunchTemplateInstanceMaintenanceOptions> {
  const LaunchTemplateInstanceMaintenanceOptionsEc2QuerySerializer()
      : super('LaunchTemplateInstanceMaintenanceOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMaintenanceOptions,
        _$LaunchTemplateInstanceMaintenanceOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMaintenanceOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMaintenanceOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'autoRecovery':
          if (value != null) {
            result.autoRecovery = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.LaunchTemplateAutoRecoveryState),
            ) as _i2.LaunchTemplateAutoRecoveryState);
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
    final payload = (object as LaunchTemplateInstanceMaintenanceOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateInstanceMaintenanceOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.autoRecovery != null) {
      result
        ..add(const _i3.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          payload.autoRecovery!,
          specifiedType:
              const FullType.nullable(_i2.LaunchTemplateAutoRecoveryState),
        ));
    }
    return result;
  }
}
