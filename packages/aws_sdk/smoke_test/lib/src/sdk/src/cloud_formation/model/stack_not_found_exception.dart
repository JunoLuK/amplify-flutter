// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stack_not_found_exception.g.dart';

/// The specified stack ARN doesn't exist or stack doesn't exist corresponding to the ARN in input.
abstract class StackNotFoundException
    with _i1.AWSEquatable<StackNotFoundException>
    implements
        Built<StackNotFoundException, StackNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified stack ARN doesn't exist or stack doesn't exist corresponding to the ARN in input.
  factory StackNotFoundException({String? message}) {
    return _$StackNotFoundException._(message: message);
  }

  /// The specified stack ARN doesn't exist or stack doesn't exist corresponding to the ARN in input.
  factory StackNotFoundException.build(
          [void Function(StackNotFoundExceptionBuilder) updates]) =
      _$StackNotFoundException;

  const StackNotFoundException._();

  /// Constructs a [StackNotFoundException] from a [payload] and [response].
  factory StackNotFoundException.fromResponse(
    StackNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    StackNotFoundExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackNotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'StackNotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackNotFoundException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class StackNotFoundExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackNotFoundException> {
  const StackNotFoundExceptionAwsQuerySerializer()
      : super('StackNotFoundException');

  @override
  Iterable<Type> get types => const [
        StackNotFoundException,
        _$StackNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackNotFoundExceptionBuilder();
    final errorIterator = serialized.iterator;
    while (errorIterator.moveNext()) {
      final key = errorIterator.current;
      errorIterator.moveNext();
      if (key == 'Error') {
        serialized = errorIterator.current as Iterable;
      }
    }
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
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as StackNotFoundException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'StackNotFoundExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
