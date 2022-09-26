// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.json_maps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/greeting_struct.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'json_maps_input_output.g.dart';

abstract class JsonMapsInputOutput
    with
        _i1.HttpInput<JsonMapsInputOutput>,
        _i2.AWSEquatable<JsonMapsInputOutput>
    implements Built<JsonMapsInputOutput, JsonMapsInputOutputBuilder> {
  factory JsonMapsInputOutput({
    _i3.BuiltMap<String, bool>? denseBooleanMap,
    _i3.BuiltMap<String, int>? denseNumberMap,
    _i3.BuiltSetMultimap<String, String>? denseSetMap,
    _i3.BuiltMap<String, String>? denseStringMap,
    _i3.BuiltMap<String, _i4.GreetingStruct>? denseStructMap,
    _i3.BuiltMap<String, bool?>? sparseBooleanMap,
    _i3.BuiltMap<String, int?>? sparseNumberMap,
    _i3.BuiltSetMultimap<String, String>? sparseSetMap,
    _i3.BuiltMap<String, String?>? sparseStringMap,
    _i3.BuiltMap<String, _i4.GreetingStruct?>? sparseStructMap,
  }) {
    return _$JsonMapsInputOutput._(
      denseBooleanMap: denseBooleanMap,
      denseNumberMap: denseNumberMap,
      denseSetMap: denseSetMap,
      denseStringMap: denseStringMap,
      denseStructMap: denseStructMap,
      sparseBooleanMap: sparseBooleanMap,
      sparseNumberMap: sparseNumberMap,
      sparseSetMap: sparseSetMap,
      sparseStringMap: sparseStringMap,
      sparseStructMap: sparseStructMap,
    );
  }

  factory JsonMapsInputOutput.build(
          [void Function(JsonMapsInputOutputBuilder) updates]) =
      _$JsonMapsInputOutput;

  const JsonMapsInputOutput._();

  factory JsonMapsInputOutput.fromRequest(
    JsonMapsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [JsonMapsInputOutput] from a [payload] and [response].
  factory JsonMapsInputOutput.fromResponse(
    JsonMapsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    JsonMapsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonMapsInputOutputBuilder b) {}
  _i3.BuiltMap<String, bool>? get denseBooleanMap;
  _i3.BuiltMap<String, int>? get denseNumberMap;
  _i3.BuiltSetMultimap<String, String>? get denseSetMap;
  _i3.BuiltMap<String, String>? get denseStringMap;
  _i3.BuiltMap<String, _i4.GreetingStruct>? get denseStructMap;
  _i3.BuiltMap<String, bool?>? get sparseBooleanMap;
  _i3.BuiltMap<String, int?>? get sparseNumberMap;
  _i3.BuiltSetMultimap<String, String>? get sparseSetMap;
  _i3.BuiltMap<String, String?>? get sparseStringMap;
  _i3.BuiltMap<String, _i4.GreetingStruct?>? get sparseStructMap;
  @override
  JsonMapsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        denseBooleanMap,
        denseNumberMap,
        denseSetMap,
        denseStringMap,
        denseStructMap,
        sparseBooleanMap,
        sparseNumberMap,
        sparseSetMap,
        sparseStringMap,
        sparseStructMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonMapsInputOutput');
    helper.add(
      'denseBooleanMap',
      denseBooleanMap,
    );
    helper.add(
      'denseNumberMap',
      denseNumberMap,
    );
    helper.add(
      'denseSetMap',
      denseSetMap,
    );
    helper.add(
      'denseStringMap',
      denseStringMap,
    );
    helper.add(
      'denseStructMap',
      denseStructMap,
    );
    helper.add(
      'sparseBooleanMap',
      sparseBooleanMap,
    );
    helper.add(
      'sparseNumberMap',
      sparseNumberMap,
    );
    helper.add(
      'sparseSetMap',
      sparseSetMap,
    );
    helper.add(
      'sparseStringMap',
      sparseStringMap,
    );
    helper.add(
      'sparseStructMap',
      sparseStructMap,
    );
    return helper.toString();
  }
}

class JsonMapsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonMapsInputOutput> {
  const JsonMapsInputOutputRestJson1Serializer() : super('JsonMapsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonMapsInputOutput,
        _$JsonMapsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  JsonMapsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'denseBooleanMap':
          if (value != null) {
            result.denseBooleanMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(bool),
                ],
              ),
            ) as _i3.BuiltMap<String, bool>));
          }
          break;
        case 'denseNumberMap':
          if (value != null) {
            result.denseNumberMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(int),
                ],
              ),
            ) as _i3.BuiltMap<String, int>));
          }
          break;
        case 'denseSetMap':
          if (value != null) {
            result.denseSetMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltSetMultimap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltSetMultimap<String, String>));
          }
          break;
        case 'denseStringMap':
          if (value != null) {
            result.denseStringMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltMap<String, String>));
          }
          break;
        case 'denseStructMap':
          if (value != null) {
            result.denseStructMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(_i4.GreetingStruct),
                ],
              ),
            ) as _i3.BuiltMap<String, _i4.GreetingStruct>));
          }
          break;
        case 'sparseBooleanMap':
          if (value != null) {
            result.sparseBooleanMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType.nullable(bool),
                ],
              ),
            ) as _i3.BuiltMap<String, bool?>));
          }
          break;
        case 'sparseNumberMap':
          if (value != null) {
            result.sparseNumberMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType.nullable(int),
                ],
              ),
            ) as _i3.BuiltMap<String, int?>));
          }
          break;
        case 'sparseSetMap':
          if (value != null) {
            result.sparseSetMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltSetMultimap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltSetMultimap<String, String>));
          }
          break;
        case 'sparseStringMap':
          if (value != null) {
            result.sparseStringMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType.nullable(String),
                ],
              ),
            ) as _i3.BuiltMap<String, String?>));
          }
          break;
        case 'sparseStructMap':
          if (value != null) {
            result.sparseStructMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType.nullable(_i4.GreetingStruct),
                ],
              ),
            ) as _i3.BuiltMap<String, _i4.GreetingStruct?>));
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
    final payload = (object as JsonMapsInputOutput);
    final result = <Object?>[];
    if (payload.denseBooleanMap != null) {
      result
        ..add('denseBooleanMap')
        ..add(serializers.serialize(
          payload.denseBooleanMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(bool),
            ],
          ),
        ));
    }
    if (payload.denseNumberMap != null) {
      result
        ..add('denseNumberMap')
        ..add(serializers.serialize(
          payload.denseNumberMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(int),
            ],
          ),
        ));
    }
    if (payload.denseSetMap != null) {
      result
        ..add('denseSetMap')
        ..add(serializers.serialize(
          payload.denseSetMap!,
          specifiedType: const FullType(
            _i3.BuiltSetMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.denseStringMap != null) {
      result
        ..add('denseStringMap')
        ..add(serializers.serialize(
          payload.denseStringMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.denseStructMap != null) {
      result
        ..add('denseStructMap')
        ..add(serializers.serialize(
          payload.denseStructMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i4.GreetingStruct),
            ],
          ),
        ));
    }
    if (payload.sparseBooleanMap != null) {
      result
        ..add('sparseBooleanMap')
        ..add(serializers.serialize(
          payload.sparseBooleanMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType.nullable(bool),
            ],
          ),
        ));
    }
    if (payload.sparseNumberMap != null) {
      result
        ..add('sparseNumberMap')
        ..add(serializers.serialize(
          payload.sparseNumberMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType.nullable(int),
            ],
          ),
        ));
    }
    if (payload.sparseSetMap != null) {
      result
        ..add('sparseSetMap')
        ..add(serializers.serialize(
          payload.sparseSetMap!,
          specifiedType: const FullType(
            _i3.BuiltSetMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.sparseStringMap != null) {
      result
        ..add('sparseStringMap')
        ..add(serializers.serialize(
          payload.sparseStringMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType.nullable(String),
            ],
          ),
        ));
    }
    if (payload.sparseStructMap != null) {
      result
        ..add('sparseStructMap')
        ..add(serializers.serialize(
          payload.sparseStructMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType.nullable(_i4.GreetingStruct),
            ],
          ),
        ));
    }
    return result;
  }
}
