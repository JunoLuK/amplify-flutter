// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.delete_service_specific_credential_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_service_specific_credential_request.g.dart';

abstract class DeleteServiceSpecificCredentialRequest
    with
        _i1.HttpInput<DeleteServiceSpecificCredentialRequest>,
        _i2.AWSEquatable<DeleteServiceSpecificCredentialRequest>
    implements
        Built<DeleteServiceSpecificCredentialRequest,
            DeleteServiceSpecificCredentialRequestBuilder> {
  factory DeleteServiceSpecificCredentialRequest({
    String? userName,
    required String serviceSpecificCredentialId,
  }) {
    return _$DeleteServiceSpecificCredentialRequest._(
      userName: userName,
      serviceSpecificCredentialId: serviceSpecificCredentialId,
    );
  }

  factory DeleteServiceSpecificCredentialRequest.build(
      [void Function(DeleteServiceSpecificCredentialRequestBuilder)
          updates]) = _$DeleteServiceSpecificCredentialRequest;

  const DeleteServiceSpecificCredentialRequest._();

  factory DeleteServiceSpecificCredentialRequest.fromRequest(
    DeleteServiceSpecificCredentialRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteServiceSpecificCredentialRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteServiceSpecificCredentialRequestBuilder b) {}

  /// The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The unique identifier of the service-specific credential. You can get this value by calling ListServiceSpecificCredentials.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get serviceSpecificCredentialId;
  @override
  DeleteServiceSpecificCredentialRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serviceSpecificCredentialId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteServiceSpecificCredentialRequest');
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'serviceSpecificCredentialId',
      serviceSpecificCredentialId,
    );
    return helper.toString();
  }
}

class DeleteServiceSpecificCredentialRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteServiceSpecificCredentialRequest> {
  const DeleteServiceSpecificCredentialRequestAwsQuerySerializer()
      : super('DeleteServiceSpecificCredentialRequest');

  @override
  Iterable<Type> get types => const [
        DeleteServiceSpecificCredentialRequest,
        _$DeleteServiceSpecificCredentialRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteServiceSpecificCredentialRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteServiceSpecificCredentialRequestBuilder();
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
        case 'UserName':
          if (value != null) {
            result.userName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ServiceSpecificCredentialId':
          result.serviceSpecificCredentialId = (serializers.deserialize(
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
    final payload = (object as DeleteServiceSpecificCredentialRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteServiceSpecificCredentialRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.userName != null) {
      result
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          payload.userName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('ServiceSpecificCredentialId'))
      ..add(serializers.serialize(
        payload.serviceSpecificCredentialId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
