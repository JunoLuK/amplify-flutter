// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.list_service_specific_credentials_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential_metadata.dart'
    as _i2;

part 'list_service_specific_credentials_response.g.dart';

abstract class ListServiceSpecificCredentialsResponse
    with
        _i1.AWSEquatable<ListServiceSpecificCredentialsResponse>
    implements
        Built<ListServiceSpecificCredentialsResponse,
            ListServiceSpecificCredentialsResponseBuilder> {
  factory ListServiceSpecificCredentialsResponse(
      {List<_i2.ServiceSpecificCredentialMetadata>?
          serviceSpecificCredentials}) {
    return _$ListServiceSpecificCredentialsResponse._(
        serviceSpecificCredentials: serviceSpecificCredentials == null
            ? null
            : _i3.BuiltList(serviceSpecificCredentials));
  }

  factory ListServiceSpecificCredentialsResponse.build(
      [void Function(ListServiceSpecificCredentialsResponseBuilder)
          updates]) = _$ListServiceSpecificCredentialsResponse;

  const ListServiceSpecificCredentialsResponse._();

  /// Constructs a [ListServiceSpecificCredentialsResponse] from a [payload] and [response].
  factory ListServiceSpecificCredentialsResponse.fromResponse(
    ListServiceSpecificCredentialsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListServiceSpecificCredentialsResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListServiceSpecificCredentialsResponseBuilder b) {}

  /// A list of structures that each contain details about a service-specific credential.
  _i3.BuiltList<_i2.ServiceSpecificCredentialMetadata>?
      get serviceSpecificCredentials;
  @override
  List<Object?> get props => [serviceSpecificCredentials];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListServiceSpecificCredentialsResponse');
    helper.add(
      'serviceSpecificCredentials',
      serviceSpecificCredentials,
    );
    return helper.toString();
  }
}

class ListServiceSpecificCredentialsResponseAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<ListServiceSpecificCredentialsResponse> {
  const ListServiceSpecificCredentialsResponseAwsQuerySerializer()
      : super('ListServiceSpecificCredentialsResponse');

  @override
  Iterable<Type> get types => const [
        ListServiceSpecificCredentialsResponse,
        _$ListServiceSpecificCredentialsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListServiceSpecificCredentialsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListServiceSpecificCredentialsResponseBuilder();
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
        case 'ServiceSpecificCredentials':
          if (value != null) {
            result.serviceSpecificCredentials.replace(
                (const _i4.XmlBuiltListSerializer(
                        indexer: _i4.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ServiceSpecificCredentialMetadata)],
              ),
            ) as _i3.BuiltList<_i2.ServiceSpecificCredentialMetadata>));
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
    final payload = (object as ListServiceSpecificCredentialsResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListServiceSpecificCredentialsResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.serviceSpecificCredentials != null) {
      result
        ..add(const _i4.XmlElementName('ServiceSpecificCredentials'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.serviceSpecificCredentials!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ServiceSpecificCredentialMetadata)],
          ),
        ));
    }
    return result;
  }
}
