// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.list_roles_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_roles_request.g.dart';

abstract class ListRolesRequest
    with _i1.HttpInput<ListRolesRequest>, _i2.AWSEquatable<ListRolesRequest>
    implements Built<ListRolesRequest, ListRolesRequestBuilder> {
  factory ListRolesRequest({
    String? pathPrefix,
    String? marker,
    int? maxItems,
  }) {
    return _$ListRolesRequest._(
      pathPrefix: pathPrefix,
      marker: marker,
      maxItems: maxItems,
    );
  }

  factory ListRolesRequest.build(
      [void Function(ListRolesRequestBuilder) updates]) = _$ListRolesRequest;

  const ListRolesRequest._();

  factory ListRolesRequest.fromRequest(
    ListRolesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListRolesRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListRolesRequestBuilder b) {}

  /// The path prefix for filtering the results. For example, the prefix `/application\_abc/component\_xyz/` gets all roles whose path starts with `/application\_abc/component\_xyz/`.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get pathPrefix;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;
  @override
  ListRolesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        pathPrefix,
        marker,
        maxItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListRolesRequest');
    helper.add(
      'pathPrefix',
      pathPrefix,
    );
    helper.add(
      'marker',
      marker,
    );
    helper.add(
      'maxItems',
      maxItems,
    );
    return helper.toString();
  }
}

class ListRolesRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListRolesRequest> {
  const ListRolesRequestAwsQuerySerializer() : super('ListRolesRequest');

  @override
  Iterable<Type> get types => const [
        ListRolesRequest,
        _$ListRolesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListRolesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListRolesRequestBuilder();
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
        case 'PathPrefix':
          if (value != null) {
            result.pathPrefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxItems':
          if (value != null) {
            result.maxItems = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as ListRolesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListRolesRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.pathPrefix != null) {
      result
        ..add(const _i1.XmlElementName('PathPrefix'))
        ..add(serializers.serialize(
          payload.pathPrefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.marker != null) {
      result
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxItems != null) {
      result
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          payload.maxItems!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
