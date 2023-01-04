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

// ignore_for_file: non_constant_identifier_names,inference_failure_on_collection_literal

library models.team;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

import 'project.dart';

class TeamType extends ModelType<String, Team, PartialTeam> {
  const TeamType();

  @override
  T fromJson<T extends PartialModel<String, Team>>(Map<String, Object?> json) {
    if (T == Team || T == Model<String, Team>) {
      return Team.fromJson(json) as T;
    }
    if (T == RemoteTeam || T == RemoteModel<String, Team>) {
      return _RemoteTeam.fromJson(json) as T;
    }
    return _PartialTeam.fromJson(json) as T;
  }

  @override
  String get modelName => 'Team';
}

class TeamQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const TeamQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Team>? _root;

  /// Query field for the [Team.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Team, String>(
        const QueryField<String, Team, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Team.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, String, Team, String>(
        const QueryField<String, Team, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Team.project] field.
  ProjectQueryFields<ModelIdentifier, M> get $project => ProjectQueryFields(
        NestedQueryField<ModelIdentifier, M, String, Team, Project>(
          const QueryField<String, Team, Project>(fieldName: 'project'),
          root: _root,
        ),
      );

  /// Query field for the [Team.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Team, TemporalDateTime>(
        const QueryField<String, Team, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Team.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Team, TemporalDateTime>(
        const QueryField<String, Team, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Team.teamProjectId] field.
  QueryField<ModelIdentifier, M, String?> get $teamProjectId =>
      NestedQueryField<ModelIdentifier, M, String, Team, String?>(
        const QueryField<String, Team, String?>(fieldName: 'teamProjectId'),
        root: _root,
      );

  /// Query field for the [Team] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Team, String>(
        const QueryField<String, Team, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialTeam extends PartialModel<String, Team>
    with AWSEquatable<PartialTeam> {
  const PartialTeam._();

  String get id;
  String? get name;
  PartialProject? get project;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get teamProjectId;
  @override
  String get modelIdentifier => id;
  @override
  TeamType get modelType => Team.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        project,
        createdAt,
        updatedAt,
        teamProjectId,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'project': project?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'teamProjectId': teamProjectId,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Team';
}

class _PartialTeam extends PartialTeam {
  const _PartialTeam({
    required this.id,
    this.name,
    this.project,
    this.createdAt,
    this.updatedAt,
    this.teamProjectId,
  }) : super._();

  factory _PartialTeam.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Team',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final teamProjectId = json['teamProjectId'] == null
        ? null
        : (json['teamProjectId'] as String);
    final project = json['project'] == null
        ? null
        : Project.classType.fromJson<PartialProject>(
            (json['project'] as Map<String, Object?>),
          );
    return _PartialTeam(
      id: id,
      name: name,
      project: project,
      createdAt: createdAt,
      updatedAt: updatedAt,
      teamProjectId: teamProjectId,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final PartialProject? project;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? teamProjectId;
}

abstract class Team extends PartialTeam implements Model<String, Team> {
  factory Team({
    String? id,
    required String name,
    Project? project,
  }) = _Team;

  const Team._() : super._();

  factory Team.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Team',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Team',
            'name',
          ))
        : (json['name'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final teamProjectId = json['teamProjectId'] == null
        ? null
        : (json['teamProjectId'] as String);
    final project = json['project'] == null
        ? null
        : Project.classType
            .fromJson<Project>((json['project'] as Map<String, Object?>));
    return _Team._(
      id: id,
      name: name,
      project: project,
      createdAt: createdAt,
      updatedAt: updatedAt,
      teamProjectId: teamProjectId,
    );
  }

  static const TeamType classType = TeamType();

  static const TeamQueryFields<String, Team> _queryFields = TeamQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'Team',
      'pluralName': 'Teams',
      'fields': {
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'name': {
          'name': 'name',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'project': {
          'name': 'project',
          'type': {'model': 'Project'},
          'isReadOnly': false,
          'authRules': [],
          'association': {
            'associationType': 'BelongsTo',
            'associatedType': 'Project',
            'targetNames': ['teamProjectId'],
          },
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
        'teamProjectId': {
          'name': 'teamProjectId',
          'type': {'scalar': 'ID'},
          'isReadOnly': true,
          'authRules': [],
        },
      },
      'authRules': [],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [],
        },
        {
          'type': 'foreign',
          'primaryField': 'project',
          'sortKeyFields': ['teamProjectId'],
          'name': 'project',
        },
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Team, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Team, String> get ID => $id;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<String, Team, String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, Team, String> get NAME => $name;
  @override
  Project? get project;

  /// Query field for the [project] field.
  ProjectQueryFields<String, Team> get $project => _queryFields.$project;

  /// Query field for the [project] field.
  @Deprecated(r'Use $project instead')
  ProjectQueryFields<String, Team> get PROJECT => $project;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get teamProjectId;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Team, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Team, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Team copyWith({
    String? id,
    String? name,
    Project? project,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? teamProjectId,
  }) {
    return _Team._(
      id: id ?? this.id,
      name: name ?? this.name,
      project: project ?? this.project,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      teamProjectId: teamProjectId ?? this.teamProjectId,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Team, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'project':
        value = project;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'teamProjectId':
        value = teamProjectId;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Team extends Team {
  _Team({
    String? id,
    required this.name,
    this.project,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        teamProjectId = project?.id,
        super._();

  const _Team._({
    required this.id,
    required this.name,
    this.project,
    required this.createdAt,
    required this.updatedAt,
    this.teamProjectId,
  }) : super._();

  @override
  final String id;

  @override
  final String name;

  @override
  final Project? project;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? teamProjectId;
}

abstract class RemoteTeam extends Team implements RemoteModel<String, Team> {
  const RemoteTeam._() : super._();
}

class _RemoteTeam extends RemoteTeam {
  const _RemoteTeam({
    required this.id,
    required this.name,
    this.project,
    required this.createdAt,
    required this.updatedAt,
    this.teamProjectId,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteTeam.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Team',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Team',
            'name',
          ))
        : (json['name'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final teamProjectId = json['teamProjectId'] == null
        ? null
        : (json['teamProjectId'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Team',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Team',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    final project = json['project'] == null
        ? null
        : Project.classType
            .fromJson<RemoteProject>((json['project'] as Map<String, Object?>));
    return _RemoteTeam(
      id: id,
      name: name,
      project: project,
      createdAt: createdAt,
      updatedAt: updatedAt,
      teamProjectId: teamProjectId,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String name;

  @override
  final RemoteProject? project;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? teamProjectId;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
