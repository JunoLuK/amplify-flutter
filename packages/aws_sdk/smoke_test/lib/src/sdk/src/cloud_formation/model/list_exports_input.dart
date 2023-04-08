// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_exports_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_exports_input.g.dart';

abstract class ListExportsInput
    with _i1.HttpInput<ListExportsInput>, _i2.AWSEquatable<ListExportsInput>
    implements Built<ListExportsInput, ListExportsInputBuilder> {
  factory ListExportsInput({String? nextToken}) {
    return _$ListExportsInput._(nextToken: nextToken);
  }

  factory ListExportsInput.build(
      [void Function(ListExportsInputBuilder) updates]) = _$ListExportsInput;

  const ListExportsInput._();

  factory ListExportsInput.fromRequest(
    ListExportsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListExportsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListExportsInputBuilder b) {}

  /// A string (provided by the ListExports response output) that identifies the next page of exported output values that you asked to retrieve.
  String? get nextToken;
  @override
  ListExportsInput getPayload() => this;
  @override
  List<Object?> get props => [nextToken];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListExportsInput');
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListExportsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListExportsInput> {
  const ListExportsInputAwsQuerySerializer() : super('ListExportsInput');

  @override
  Iterable<Type> get types => const [
        ListExportsInput,
        _$ListExportsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListExportsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListExportsInputBuilder();
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
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as ListExportsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListExportsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
