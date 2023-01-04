// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

library models.scalar_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';

class ScalarModelType
    extends ModelType<String, ScalarModel, PartialScalarModel> {
  const ScalarModelType();

  @override
  T fromJson<T extends PartialModel<String, ScalarModel>>(
      Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  String get modelName => 'ScalarModel';
}

abstract class PartialScalarModel extends PartialModel<String, ScalarModel>
    with AWSEquatable<PartialScalarModel> {
  const PartialScalarModel._();

  String get id;
  String? get str;
  String get requiredStr;
  int? get integer;
  int get requiredInteger;
  double? get float;
  double get requiredFloat;
  bool? get boolean;
  bool get requiredBoolean;
  TemporalDate? get awsDate;
  TemporalDate get requiredAwsDate;
  TemporalDateTime? get awsDateTime;
  TemporalDateTime get requiredAwsDateTime;
  TemporalTime? get awsTime;
  TemporalTime get requiredAwsTime;
  TemporalTimestamp? get awsTimestamp;
  TemporalTimestamp get requiredAwsTimestamp;
  String? get awsEmail;
  String get requiredAwsEmail;
  Object? get awsJson;
  Object get requiredAwsJson;
  String? get awsPhone;
  String get requiredAwsPhone;
  Uri? get awsUrl;
  Uri get requiredAwsUrl;
  String? get awsIpAddress;
  String get requiredAwsIpAddress;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  ScalarModelType get modelType => ScalarModel.classType;
  @override
  List<Object?> get props => [
        id,
        str,
        requiredStr,
        integer,
        requiredInteger,
        float,
        requiredFloat,
        boolean,
        requiredBoolean,
        awsDate,
        requiredAwsDate,
        awsDateTime,
        requiredAwsDateTime,
        awsTime,
        requiredAwsTime,
        awsTimestamp,
        requiredAwsTimestamp,
        awsEmail,
        requiredAwsEmail,
        awsJson,
        requiredAwsJson,
        awsPhone,
        requiredAwsPhone,
        awsUrl,
        requiredAwsUrl,
        awsIpAddress,
        requiredAwsIpAddress,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'str': str,
        'requiredStr': requiredStr,
        'integer': integer,
        'requiredInteger': requiredInteger,
        'float': float,
        'requiredFloat': requiredFloat,
        'boolean': boolean,
        'requiredBoolean': requiredBoolean,
        'awsDate': awsDate,
        'requiredAwsDate': requiredAwsDate,
        'awsDateTime': awsDateTime,
        'requiredAwsDateTime': requiredAwsDateTime,
        'awsTime': awsTime,
        'requiredAwsTime': requiredAwsTime,
        'awsTimestamp': awsTimestamp,
        'requiredAwsTimestamp': requiredAwsTimestamp,
        'awsEmail': awsEmail,
        'requiredAwsEmail': requiredAwsEmail,
        'awsJson': awsJson,
        'requiredAwsJson': requiredAwsJson,
        'awsPhone': awsPhone,
        'requiredAwsPhone': requiredAwsPhone,
        'awsUrl': awsUrl,
        'requiredAwsUrl': requiredAwsUrl,
        'awsIpAddress': awsIpAddress,
        'requiredAwsIpAddress': requiredAwsIpAddress,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
  @override
  String get runtimeTypeName => 'ScalarModel';
  @override
  T valueFor<T extends Object?>(QueryField<String, ScalarModel, T> field) {
    throw UnimplementedError();
  }
}

class _PartialScalarModel extends PartialScalarModel {
  _PartialScalarModel({
    required this.id,
    this.str,
    required this.requiredStr,
    this.integer,
    required this.requiredInteger,
    this.float,
    required this.requiredFloat,
    this.boolean,
    required this.requiredBoolean,
    this.awsDate,
    required this.requiredAwsDate,
    this.awsDateTime,
    required this.requiredAwsDateTime,
    this.awsTime,
    required this.requiredAwsTime,
    this.awsTimestamp,
    required this.requiredAwsTimestamp,
    this.awsEmail,
    required this.requiredAwsEmail,
    this.awsJson,
    required this.requiredAwsJson,
    this.awsPhone,
    required this.requiredAwsPhone,
    this.awsUrl,
    required this.requiredAwsUrl,
    this.awsIpAddress,
    required this.requiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialScalarModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  final String id;

  @override
  final String? str;

  @override
  final String requiredStr;

  @override
  final int? integer;

  @override
  final int requiredInteger;

  @override
  final double? float;

  @override
  final double requiredFloat;

  @override
  final bool? boolean;

  @override
  final bool requiredBoolean;

  @override
  final TemporalDate? awsDate;

  @override
  final TemporalDate requiredAwsDate;

  @override
  final TemporalDateTime? awsDateTime;

  @override
  final TemporalDateTime requiredAwsDateTime;

  @override
  final TemporalTime? awsTime;

  @override
  final TemporalTime requiredAwsTime;

  @override
  final TemporalTimestamp? awsTimestamp;

  @override
  final TemporalTimestamp requiredAwsTimestamp;

  @override
  final String? awsEmail;

  @override
  final String requiredAwsEmail;

  @override
  final Object? awsJson;

  @override
  final Object requiredAwsJson;

  @override
  final String? awsPhone;

  @override
  final String requiredAwsPhone;

  @override
  final Uri? awsUrl;

  @override
  final Uri requiredAwsUrl;

  @override
  final String? awsIpAddress;

  @override
  final String requiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ScalarModel extends PartialScalarModel
    implements Model<String, ScalarModel> {
  factory ScalarModel({
    required String id,
    String? str,
    required String requiredStr,
    int? integer,
    required int requiredInteger,
    double? float,
    required double requiredFloat,
    bool? boolean,
    required bool requiredBoolean,
    TemporalDate? awsDate,
    required TemporalDate requiredAwsDate,
    TemporalDateTime? awsDateTime,
    required TemporalDateTime requiredAwsDateTime,
    TemporalTime? awsTime,
    required TemporalTime requiredAwsTime,
    TemporalTimestamp? awsTimestamp,
    required TemporalTimestamp requiredAwsTimestamp,
    String? awsEmail,
    required String requiredAwsEmail,
    Object? awsJson,
    required Object requiredAwsJson,
    String? awsPhone,
    required String requiredAwsPhone,
    Uri? awsUrl,
    required Uri requiredAwsUrl,
    String? awsIpAddress,
    required String requiredAwsIpAddress,
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
  }) = _ScalarModel;

  const ScalarModel._() : super._();

  factory ScalarModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  static const ScalarModelType classType = ScalarModelType();

  String get id;
  String? get str;
  String get requiredStr;
  int? get integer;
  int get requiredInteger;
  double? get float;
  double get requiredFloat;
  bool? get boolean;
  bool get requiredBoolean;
  TemporalDate? get awsDate;
  TemporalDate get requiredAwsDate;
  TemporalDateTime? get awsDateTime;
  TemporalDateTime get requiredAwsDateTime;
  TemporalTime? get awsTime;
  TemporalTime get requiredAwsTime;
  TemporalTimestamp? get awsTimestamp;
  TemporalTimestamp get requiredAwsTimestamp;
  String? get awsEmail;
  String get requiredAwsEmail;
  Object? get awsJson;
  Object get requiredAwsJson;
  String? get awsPhone;
  String get requiredAwsPhone;
  Uri? get awsUrl;
  Uri get requiredAwsUrl;
  String? get awsIpAddress;
  String get requiredAwsIpAddress;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
}

class _ScalarModel extends ScalarModel {
  _ScalarModel({
    required this.id,
    this.str,
    required this.requiredStr,
    this.integer,
    required this.requiredInteger,
    this.float,
    required this.requiredFloat,
    this.boolean,
    required this.requiredBoolean,
    this.awsDate,
    required this.requiredAwsDate,
    this.awsDateTime,
    required this.requiredAwsDateTime,
    this.awsTime,
    required this.requiredAwsTime,
    this.awsTimestamp,
    required this.requiredAwsTimestamp,
    this.awsEmail,
    required this.requiredAwsEmail,
    this.awsJson,
    required this.requiredAwsJson,
    this.awsPhone,
    required this.requiredAwsPhone,
    this.awsUrl,
    required this.requiredAwsUrl,
    this.awsIpAddress,
    required this.requiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String? str;

  @override
  final String requiredStr;

  @override
  final int? integer;

  @override
  final int requiredInteger;

  @override
  final double? float;

  @override
  final double requiredFloat;

  @override
  final bool? boolean;

  @override
  final bool requiredBoolean;

  @override
  final TemporalDate? awsDate;

  @override
  final TemporalDate requiredAwsDate;

  @override
  final TemporalDateTime? awsDateTime;

  @override
  final TemporalDateTime requiredAwsDateTime;

  @override
  final TemporalTime? awsTime;

  @override
  final TemporalTime requiredAwsTime;

  @override
  final TemporalTimestamp? awsTimestamp;

  @override
  final TemporalTimestamp requiredAwsTimestamp;

  @override
  final String? awsEmail;

  @override
  final String requiredAwsEmail;

  @override
  final Object? awsJson;

  @override
  final Object requiredAwsJson;

  @override
  final String? awsPhone;

  @override
  final String requiredAwsPhone;

  @override
  final Uri? awsUrl;

  @override
  final Uri requiredAwsUrl;

  @override
  final String? awsIpAddress;

  @override
  final String requiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class RemoteScalarModel extends ScalarModel
    implements RemoteModel<String, ScalarModel> {
  const RemoteScalarModel._() : super._();
}

class _RemoteScalarModel extends RemoteScalarModel {
  _RemoteScalarModel({
    required this.id,
    this.str,
    required this.requiredStr,
    this.integer,
    required this.requiredInteger,
    this.float,
    required this.requiredFloat,
    this.boolean,
    required this.requiredBoolean,
    this.awsDate,
    required this.requiredAwsDate,
    this.awsDateTime,
    required this.requiredAwsDateTime,
    this.awsTime,
    required this.requiredAwsTime,
    this.awsTimestamp,
    required this.requiredAwsTimestamp,
    this.awsEmail,
    required this.requiredAwsEmail,
    this.awsJson,
    required this.requiredAwsJson,
    this.awsPhone,
    required this.requiredAwsPhone,
    this.awsUrl,
    required this.requiredAwsUrl,
    this.awsIpAddress,
    required this.requiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteScalarModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  final String id;

  @override
  final String? str;

  @override
  final String requiredStr;

  @override
  final int? integer;

  @override
  final int requiredInteger;

  @override
  final double? float;

  @override
  final double requiredFloat;

  @override
  final bool? boolean;

  @override
  final bool requiredBoolean;

  @override
  final TemporalDate? awsDate;

  @override
  final TemporalDate requiredAwsDate;

  @override
  final TemporalDateTime? awsDateTime;

  @override
  final TemporalDateTime requiredAwsDateTime;

  @override
  final TemporalTime? awsTime;

  @override
  final TemporalTime requiredAwsTime;

  @override
  final TemporalTimestamp? awsTimestamp;

  @override
  final TemporalTimestamp requiredAwsTimestamp;

  @override
  final String? awsEmail;

  @override
  final String requiredAwsEmail;

  @override
  final Object? awsJson;

  @override
  final Object requiredAwsJson;

  @override
  final String? awsPhone;

  @override
  final String requiredAwsPhone;

  @override
  final Uri? awsUrl;

  @override
  final Uri requiredAwsUrl;

  @override
  final String? awsIpAddress;

  @override
  final String requiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
