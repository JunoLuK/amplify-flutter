// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.put_method_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'put_method_request.g.dart';

/// Request to add a method to an existing Resource resource.
abstract class PutMethodRequest
    with
        _i1.HttpInput<PutMethodRequestPayload>,
        _i2.AWSEquatable<PutMethodRequest>
    implements
        Built<PutMethodRequest, PutMethodRequestBuilder>,
        _i1.HasPayload<PutMethodRequestPayload> {
  /// Request to add a method to an existing Resource resource.
  factory PutMethodRequest({
    required String restApiId,
    required String resourceId,
    required String httpMethod,
    required String authorizationType,
    String? authorizerId,
    bool? apiKeyRequired,
    String? operationName,
    Map<String, bool>? requestParameters,
    Map<String, String>? requestModels,
    String? requestValidatorId,
    List<String>? authorizationScopes,
  }) {
    return _$PutMethodRequest._(
      restApiId: restApiId,
      resourceId: resourceId,
      httpMethod: httpMethod,
      authorizationType: authorizationType,
      authorizerId: authorizerId,
      apiKeyRequired: apiKeyRequired,
      operationName: operationName,
      requestParameters:
          requestParameters == null ? null : _i3.BuiltMap(requestParameters),
      requestModels: requestModels == null ? null : _i3.BuiltMap(requestModels),
      requestValidatorId: requestValidatorId,
      authorizationScopes: authorizationScopes == null
          ? null
          : _i3.BuiltList(authorizationScopes),
    );
  }

  /// Request to add a method to an existing Resource resource.
  factory PutMethodRequest.build(
      [void Function(PutMethodRequestBuilder) updates]) = _$PutMethodRequest;

  const PutMethodRequest._();

  factory PutMethodRequest.fromRequest(
    PutMethodRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutMethodRequest.build((b) {
        b.apiKeyRequired = payload.apiKeyRequired;
        if (payload.authorizationScopes != null) {
          b.authorizationScopes.replace(payload.authorizationScopes!);
        }
        b.authorizationType = payload.authorizationType;
        b.authorizerId = payload.authorizerId;
        b.operationName = payload.operationName;
        if (payload.requestModels != null) {
          b.requestModels.replace(payload.requestModels!);
        }
        if (payload.requestParameters != null) {
          b.requestParameters.replace(payload.requestParameters!);
        }
        b.requestValidatorId = payload.requestValidatorId;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutMethodRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutMethodRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The Resource identifier for the new Method resource.
  String get resourceId;

  /// Specifies the method request's HTTP method type.
  String get httpMethod;

  /// The method's authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO\_USER\_POOLS` for using a Cognito user pool.
  String get authorizationType;

  /// Specifies the identifier of an Authorizer to use on this Method, if the type is CUSTOM or COGNITO\_USER\_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.
  String? get authorizerId;

  /// Specifies whether the method required a valid ApiKey.
  bool? get apiKeyRequired;

  /// A human-friendly operation identifier for the method. For example, you can assign the `operationName` of `ListPets` for the `GET /pets` method in the `PetStore` example.
  String? get operationName;

  /// A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (`true`) or optional (`false`). The method request parameter names defined here are available in Integration to be mapped to integration request parameters or body-mapping templates.
  _i3.BuiltMap<String, bool>? get requestParameters;

  /// Specifies the Model resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a Model name as the value.
  _i3.BuiltMap<String, String>? get requestModels;

  /// The identifier of a RequestValidator for validating the method request.
  String? get requestValidatorId;

  /// A list of authorization scopes configured on the method. The scopes are used with a `COGNITO\_USER\_POOLS` authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.
  _i3.BuiltList<String>? get authorizationScopes;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  PutMethodRequestPayload getPayload() => PutMethodRequestPayload((b) {
        b.apiKeyRequired = apiKeyRequired;
        if (authorizationScopes != null) {
          b.authorizationScopes.replace(authorizationScopes!);
        }
        b.authorizationType = authorizationType;
        b.authorizerId = authorizerId;
        b.operationName = operationName;
        if (requestModels != null) {
          b.requestModels.replace(requestModels!);
        }
        if (requestParameters != null) {
          b.requestParameters.replace(requestParameters!);
        }
        b.requestValidatorId = requestValidatorId;
      });
  @override
  List<Object?> get props => [
        restApiId,
        resourceId,
        httpMethod,
        authorizationType,
        authorizerId,
        apiKeyRequired,
        operationName,
        requestParameters,
        requestModels,
        requestValidatorId,
        authorizationScopes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutMethodRequest');
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'httpMethod',
      httpMethod,
    );
    helper.add(
      'authorizationType',
      authorizationType,
    );
    helper.add(
      'authorizerId',
      authorizerId,
    );
    helper.add(
      'apiKeyRequired',
      apiKeyRequired,
    );
    helper.add(
      'operationName',
      operationName,
    );
    helper.add(
      'requestParameters',
      requestParameters,
    );
    helper.add(
      'requestModels',
      requestModels,
    );
    helper.add(
      'requestValidatorId',
      requestValidatorId,
    );
    helper.add(
      'authorizationScopes',
      authorizationScopes,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class PutMethodRequestPayload
    with _i2.AWSEquatable<PutMethodRequestPayload>
    implements Built<PutMethodRequestPayload, PutMethodRequestPayloadBuilder> {
  factory PutMethodRequestPayload(
          [void Function(PutMethodRequestPayloadBuilder) updates]) =
      _$PutMethodRequestPayload;

  const PutMethodRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutMethodRequestPayloadBuilder b) {}

  /// Specifies whether the method required a valid ApiKey.
  bool? get apiKeyRequired;

  /// A list of authorization scopes configured on the method. The scopes are used with a `COGNITO\_USER\_POOLS` authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.
  _i3.BuiltList<String>? get authorizationScopes;

  /// The method's authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO\_USER\_POOLS` for using a Cognito user pool.
  String get authorizationType;

  /// Specifies the identifier of an Authorizer to use on this Method, if the type is CUSTOM or COGNITO\_USER\_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.
  String? get authorizerId;

  /// A human-friendly operation identifier for the method. For example, you can assign the `operationName` of `ListPets` for the `GET /pets` method in the `PetStore` example.
  String? get operationName;

  /// Specifies the Model resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a Model name as the value.
  _i3.BuiltMap<String, String>? get requestModels;

  /// A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (`true`) or optional (`false`). The method request parameter names defined here are available in Integration to be mapped to integration request parameters or body-mapping templates.
  _i3.BuiltMap<String, bool>? get requestParameters;

  /// The identifier of a RequestValidator for validating the method request.
  String? get requestValidatorId;
  @override
  List<Object?> get props => [
        apiKeyRequired,
        authorizationScopes,
        authorizationType,
        authorizerId,
        operationName,
        requestModels,
        requestParameters,
        requestValidatorId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutMethodRequestPayload');
    helper.add(
      'apiKeyRequired',
      apiKeyRequired,
    );
    helper.add(
      'authorizationScopes',
      authorizationScopes,
    );
    helper.add(
      'authorizationType',
      authorizationType,
    );
    helper.add(
      'authorizerId',
      authorizerId,
    );
    helper.add(
      'operationName',
      operationName,
    );
    helper.add(
      'requestModels',
      requestModels,
    );
    helper.add(
      'requestParameters',
      requestParameters,
    );
    helper.add(
      'requestValidatorId',
      requestValidatorId,
    );
    return helper.toString();
  }
}

class PutMethodRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PutMethodRequestPayload> {
  const PutMethodRequestRestJson1Serializer() : super('PutMethodRequest');

  @override
  Iterable<Type> get types => const [
        PutMethodRequest,
        _$PutMethodRequest,
        PutMethodRequestPayload,
        _$PutMethodRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PutMethodRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutMethodRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiKeyRequired':
          result.apiKeyRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'authorizationScopes':
          result.authorizationScopes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'authorizationType':
          result.authorizationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'authorizerId':
          result.authorizerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'operationName':
          result.operationName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requestModels':
          result.requestModels.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'requestParameters':
          result.requestParameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(bool),
              ],
            ),
          ) as _i3.BuiltMap<String, bool>));
        case 'requestValidatorId':
          result.requestValidatorId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = object is PutMethodRequest
        ? object.getPayload()
        : (object as PutMethodRequestPayload);
    final result = <Object?>[
      'authorizationType',
      serializers.serialize(
        payload.authorizationType,
        specifiedType: const FullType(String),
      ),
    ];
    final PutMethodRequestPayload(
      :apiKeyRequired,
      :authorizationScopes,
      :authorizerId,
      :operationName,
      :requestModels,
      :requestParameters,
      :requestValidatorId
    ) = payload;
    if (apiKeyRequired != null) {
      result
        ..add('apiKeyRequired')
        ..add(serializers.serialize(
          apiKeyRequired,
          specifiedType: const FullType(bool),
        ));
    }
    if (authorizationScopes != null) {
      result
        ..add('authorizationScopes')
        ..add(serializers.serialize(
          authorizationScopes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (authorizerId != null) {
      result
        ..add('authorizerId')
        ..add(serializers.serialize(
          authorizerId,
          specifiedType: const FullType(String),
        ));
    }
    if (operationName != null) {
      result
        ..add('operationName')
        ..add(serializers.serialize(
          operationName,
          specifiedType: const FullType(String),
        ));
    }
    if (requestModels != null) {
      result
        ..add('requestModels')
        ..add(serializers.serialize(
          requestModels,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (requestParameters != null) {
      result
        ..add('requestParameters')
        ..add(serializers.serialize(
          requestParameters,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(bool),
            ],
          ),
        ));
    }
    if (requestValidatorId != null) {
      result
        ..add('requestValidatorId')
        ..add(serializers.serialize(
          requestValidatorId,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
