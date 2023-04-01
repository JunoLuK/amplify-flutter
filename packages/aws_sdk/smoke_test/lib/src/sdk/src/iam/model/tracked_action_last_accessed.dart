// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.tracked_action_last_accessed; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'tracked_action_last_accessed.g.dart';

/// Contains details about the most recent attempt to access an action within the service.
///
/// This data type is used as a response element in the GetServiceLastAccessedDetails operation.
abstract class TrackedActionLastAccessed
    with _i1.AWSEquatable<TrackedActionLastAccessed>
    implements
        Built<TrackedActionLastAccessed, TrackedActionLastAccessedBuilder> {
  /// Contains details about the most recent attempt to access an action within the service.
  ///
  /// This data type is used as a response element in the GetServiceLastAccessedDetails operation.
  factory TrackedActionLastAccessed({
    String? actionName,
    String? lastAccessedEntity,
    DateTime? lastAccessedTime,
    String? lastAccessedRegion,
  }) {
    return _$TrackedActionLastAccessed._(
      actionName: actionName,
      lastAccessedEntity: lastAccessedEntity,
      lastAccessedTime: lastAccessedTime,
      lastAccessedRegion: lastAccessedRegion,
    );
  }

  /// Contains details about the most recent attempt to access an action within the service.
  ///
  /// This data type is used as a response element in the GetServiceLastAccessedDetails operation.
  factory TrackedActionLastAccessed.build(
          [void Function(TrackedActionLastAccessedBuilder) updates]) =
      _$TrackedActionLastAccessed;

  const TrackedActionLastAccessed._();

  static const List<_i2.SmithySerializer> serializers = [
    TrackedActionLastAccessedAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrackedActionLastAccessedBuilder b) {}

  /// The name of the tracked action to which access was attempted. Tracked actions are actions that report activity to IAM.
  String? get actionName;

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get lastAccessedEntity;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when an authenticated entity most recently attempted to access the tracked service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no IAM entities attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  DateTime? get lastAccessedTime;

  /// The Region from which the authenticated entity (user or role) last attempted to access the tracked action. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no IAM entities attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  String? get lastAccessedRegion;
  @override
  List<Object?> get props => [
        actionName,
        lastAccessedEntity,
        lastAccessedTime,
        lastAccessedRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrackedActionLastAccessed');
    helper.add(
      'actionName',
      actionName,
    );
    helper.add(
      'lastAccessedEntity',
      lastAccessedEntity,
    );
    helper.add(
      'lastAccessedTime',
      lastAccessedTime,
    );
    helper.add(
      'lastAccessedRegion',
      lastAccessedRegion,
    );
    return helper.toString();
  }
}

class TrackedActionLastAccessedAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TrackedActionLastAccessed> {
  const TrackedActionLastAccessedAwsQuerySerializer()
      : super('TrackedActionLastAccessed');

  @override
  Iterable<Type> get types => const [
        TrackedActionLastAccessed,
        _$TrackedActionLastAccessed,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TrackedActionLastAccessed deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackedActionLastAccessedBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ActionName':
          if (value != null) {
            result.actionName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastAccessedEntity':
          if (value != null) {
            result.lastAccessedEntity = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastAccessedTime':
          if (value != null) {
            result.lastAccessedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastAccessedRegion':
          if (value != null) {
            result.lastAccessedRegion = (serializers.deserialize(
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
    final payload = (object as TrackedActionLastAccessed);
    final result = <Object?>[
      const _i2.XmlElementName(
        'TrackedActionLastAccessedResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.actionName != null) {
      result
        ..add(const _i2.XmlElementName('ActionName'))
        ..add(serializers.serialize(
          payload.actionName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastAccessedEntity != null) {
      result
        ..add(const _i2.XmlElementName('LastAccessedEntity'))
        ..add(serializers.serialize(
          payload.lastAccessedEntity!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastAccessedTime != null) {
      result
        ..add(const _i2.XmlElementName('LastAccessedTime'))
        ..add(serializers.serialize(
          payload.lastAccessedTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.lastAccessedRegion != null) {
      result
        ..add(const _i2.XmlElementName('LastAccessedRegion'))
        ..add(serializers.serialize(
          payload.lastAccessedRegion!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
