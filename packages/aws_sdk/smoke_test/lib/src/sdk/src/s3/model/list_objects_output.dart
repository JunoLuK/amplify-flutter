// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.list_objects_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/object.dart' as _i2;

part 'list_objects_output.g.dart';

abstract class ListObjectsOutput
    with _i1.AWSEquatable<ListObjectsOutput>
    implements Built<ListObjectsOutput, ListObjectsOutputBuilder> {
  factory ListObjectsOutput({
    bool? isTruncated,
    String? marker,
    String? nextMarker,
    List<_i2.S3Object>? contents,
    String? name,
    String? prefix,
    String? delimiter,
    int? maxKeys,
    List<_i3.CommonPrefix>? commonPrefixes,
    _i4.EncodingType? encodingType,
  }) {
    isTruncated ??= false;
    maxKeys ??= 0;
    return _$ListObjectsOutput._(
      isTruncated: isTruncated,
      marker: marker,
      nextMarker: nextMarker,
      contents: contents == null ? null : _i5.BuiltList(contents),
      name: name,
      prefix: prefix,
      delimiter: delimiter,
      maxKeys: maxKeys,
      commonPrefixes:
          commonPrefixes == null ? null : _i5.BuiltList(commonPrefixes),
      encodingType: encodingType,
    );
  }

  factory ListObjectsOutput.build(
      [void Function(ListObjectsOutputBuilder) updates]) = _$ListObjectsOutput;

  const ListObjectsOutput._();

  /// Constructs a [ListObjectsOutput] from a [payload] and [response].
  factory ListObjectsOutput.fromResponse(
    ListObjectsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    ListObjectsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsOutputBuilder b) {
    b.isTruncated = false;
    b.maxKeys = 0;
  }

  /// A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria.
  bool get isTruncated;

  /// Indicates where in the bucket listing begins. Marker is included in the response if it was sent with the request.
  String? get marker;

  /// When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMarker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.
  String? get nextMarker;

  /// Metadata about each object returned.
  _i5.BuiltList<_i2.S3Object>? get contents;

  /// The bucket name.
  String? get name;

  /// Keys that begin with the indicated prefix.
  String? get prefix;

  /// Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the `CommonPrefixes` collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the `MaxKeys` value.
  String? get delimiter;

  /// The maximum number of keys returned in the response body.
  int get maxKeys;

  /// All of the keys (up to 1,000) rolled up in a common prefix count as a single return when calculating the number of returns.
  ///
  /// A response can contain CommonPrefixes only if you specify a delimiter.
  ///
  /// CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by the delimiter.
  ///
  /// CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix.
  ///
  /// For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
  _i5.BuiltList<_i3.CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object keys in the response.
  _i4.EncodingType? get encodingType;
  @override
  List<Object?> get props => [
        isTruncated,
        marker,
        nextMarker,
        contents,
        name,
        prefix,
        delimiter,
        maxKeys,
        commonPrefixes,
        encodingType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsOutput');
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'marker',
      marker,
    );
    helper.add(
      'nextMarker',
      nextMarker,
    );
    helper.add(
      'contents',
      contents,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'delimiter',
      delimiter,
    );
    helper.add(
      'maxKeys',
      maxKeys,
    );
    helper.add(
      'commonPrefixes',
      commonPrefixes,
    );
    helper.add(
      'encodingType',
      encodingType,
    );
    return helper.toString();
  }
}

class ListObjectsOutputRestXmlSerializer
    extends _i6.StructuredSmithySerializer<ListObjectsOutput> {
  const ListObjectsOutputRestXmlSerializer() : super('ListObjectsOutput');

  @override
  Iterable<Type> get types => const [
        ListObjectsOutput,
        _$ListObjectsOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CommonPrefixes':
          if (value != null) {
            result.commonPrefixes.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CommonPrefix),
            ) as _i3.CommonPrefix));
          }
          break;
        case 'Contents':
          if (value != null) {
            result.contents.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.S3Object),
            ) as _i2.S3Object));
          }
          break;
        case 'Delimiter':
          if (value != null) {
            result.delimiter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'EncodingType':
          if (value != null) {
            result.encodingType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.EncodingType),
            ) as _i4.EncodingType);
          }
          break;
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxKeys':
          result.maxKeys = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NextMarker':
          if (value != null) {
            result.nextMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
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
    final payload = (object as ListObjectsOutput);
    final result = <Object?>[
      const _i6.XmlElementName(
        'ListBucketResult',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.commonPrefixes != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        payload.commonPrefixes!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i3.CommonPrefix)],
        ),
      ));
    }
    if (payload.contents != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'Contents').serialize(
        serializers,
        payload.contents!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i2.S3Object)],
        ),
      ));
    }
    if (payload.delimiter != null) {
      result
        ..add(const _i6.XmlElementName('Delimiter'))
        ..add(serializers.serialize(
          payload.delimiter!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.encodingType != null) {
      result
        ..add(const _i6.XmlElementName('EncodingType'))
        ..add(serializers.serialize(
          payload.encodingType!,
          specifiedType: const FullType.nullable(_i4.EncodingType),
        ));
    }
    result
      ..add(const _i6.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        payload.isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (payload.marker != null) {
      result
        ..add(const _i6.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i6.XmlElementName('MaxKeys'))
      ..add(serializers.serialize(
        payload.maxKeys,
        specifiedType: const FullType(int),
      ));
    if (payload.name != null) {
      result
        ..add(const _i6.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextMarker != null) {
      result
        ..add(const _i6.XmlElementName('NextMarker'))
        ..add(serializers.serialize(
          payload.nextMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i6.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
