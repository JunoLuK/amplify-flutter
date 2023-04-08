// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.create_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_group_request.g.dart';

abstract class CreateGroupRequest
    with _i1.HttpInput<CreateGroupRequest>, _i2.AWSEquatable<CreateGroupRequest>
    implements Built<CreateGroupRequest, CreateGroupRequestBuilder> {
  factory CreateGroupRequest({
    String? path,
    required String groupName,
  }) {
    return _$CreateGroupRequest._(
      path: path,
      groupName: groupName,
    );
  }

  factory CreateGroupRequest.build(
          [void Function(CreateGroupRequestBuilder) updates]) =
      _$CreateGroupRequest;

  const CreateGroupRequest._();

  factory CreateGroupRequest.fromRequest(
    CreateGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateGroupRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateGroupRequestBuilder b) {}

  /// The path to the group. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/).
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get path;

  /// The name of the group to create. Do not include the path in this value.
  ///
  /// IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
  String get groupName;
  @override
  CreateGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        path,
        groupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateGroupRequest');
    helper.add(
      'path',
      path,
    );
    helper.add(
      'groupName',
      groupName,
    );
    return helper.toString();
  }
}

class CreateGroupRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateGroupRequest> {
  const CreateGroupRequestAwsQuerySerializer() : super('CreateGroupRequest');

  @override
  Iterable<Type> get types => const [
        CreateGroupRequest,
        _$CreateGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateGroupRequestBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Path':
          if (value != null) {
            result.path = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as CreateGroupRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateGroupRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.path != null) {
      result
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          payload.path!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        payload.groupName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
