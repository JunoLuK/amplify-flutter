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

// ignore_for_file: non_constant_identifier_names

library models.post;

import 'package:amplify_core/amplify_core.dart';

import 'blog.dart';
import 'comment.dart';

class PostType extends ModelType<String, Post, PartialPost> {
  const PostType();

  @override
  T fromJson<T extends PartialModel<String, Post>>(Map<String, Object?> json) {
    if (T == Post || T == Model<String, Post>) {
      return Post.fromJson(json) as T;
    }
    if (T == RemotePost || T == RemoteModel<String, Post>) {
      return _RemotePost.fromJson(json) as T;
    }
    return _PartialPost.fromJson(json) as T;
  }

  @override
  String get modelName => 'Post';
}

class PostQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const PostQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Post>? _root;

  /// Query field for the [Post.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Post, String>(
        const QueryField<String, Post, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Post.title] field.
  QueryField<ModelIdentifier, M, String> get $title =>
      NestedQueryField<ModelIdentifier, M, String, Post, String>(
        const QueryField<String, Post, String>(fieldName: 'title'),
        root: _root,
      );

  /// Query field for the [Post.blog] field.
  BlogQueryFields<ModelIdentifier, M> get $blog =>
      BlogQueryFields(NestedQueryField<ModelIdentifier, M, String, Post, Blog>(
        const QueryField<String, Post, Blog>(fieldName: 'blog'),
        root: _root,
      ));

  /// Query field for the [Post.comments] field.
  CommentQueryFields<ModelIdentifier, M> get $comments => CommentQueryFields(
          NestedQueryField<ModelIdentifier, M, String, Post, Comment>(
        const QueryField<String, Post, Comment>(fieldName: 'comments'),
        root: _root,
      ));

  /// Query field for the [Post.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Post, TemporalDateTime>(
        const QueryField<String, Post, TemporalDateTime>(
            fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [Post.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Post, TemporalDateTime>(
        const QueryField<String, Post, TemporalDateTime>(
            fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [Post.blogPostsId] field.
  QueryField<ModelIdentifier, M, String?> get $blogPostsId =>
      NestedQueryField<ModelIdentifier, M, String, Post, String?>(
        const QueryField<String, Post, String?>(fieldName: 'blogPostsId'),
        root: _root,
      );

  /// Query field for the [Post] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Post, String>(
        const QueryField<String, Post, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialPost extends PartialModel<String, Post>
    with AWSEquatable<PartialPost> {
  const PartialPost._();

  String get id;
  String? get title;
  PartialBlog? get blog;
  AsyncModelCollection<String, Comment, PartialComment, PartialComment>?
      get comments;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get blogPostsId;
  @override
  String get modelIdentifier => id;
  @override
  PostType get modelType => Post.classType;
  @override
  List<Object?> get props => [
        id,
        title,
        blog,
        comments,
        createdAt,
        updatedAt,
        blogPostsId,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'blog': blog?.toJson(),
        'comments': comments?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'blogPostsId': blogPostsId,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Post';
  @override
  T valueFor<T extends Object?>(QueryField<String, Post, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'title':
        value = title;
        break;
      case r'blog':
        value = blog;
        break;
      case r'comments':
        value = comments;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'blogPostsId':
        value = blogPostsId;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _PartialPost extends PartialPost {
  const _PartialPost({
    required this.id,
    this.title,
    this.blog,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.blogPostsId,
  }) : super._();

  factory _PartialPost.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null ? null : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final blogPostsId =
        json['blogPostsId'] == null ? null : (json['blogPostsId'] as String);
    final blog = json['blog'] == null
        ? null
        : Blog.classType
            .fromJson<PartialBlog>((json['blog'] as Map<String, Object?>));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment, PartialComment,
                PartialComment>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map((el) => el == null
                    ? null
                    : Comment.classType.fromJson<PartialComment>(el))
                .whereType<PartialComment>()
                .toList());
    return _PartialPost(
      id: id,
      title: title,
      blog: blog,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      blogPostsId: blogPostsId,
    );
  }

  @override
  final String id;

  @override
  final String? title;

  @override
  final PartialBlog? blog;

  @override
  final AsyncModelCollection<String, Comment, PartialComment, PartialComment>?
      comments;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? blogPostsId;
}

abstract class Post extends PartialPost implements Model<String, Post> {
  factory Post({
    String? id,
    required String title,
    Blog? blog,
    List<Comment>? comments,
  }) = _Post;

  const Post._() : super._();

  factory Post.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final blogPostsId =
        json['blogPostsId'] == null ? null : (json['blogPostsId'] as String);
    final blog = json['blog'] == null
        ? null
        : Blog.classType.fromJson<Blog>((json['blog'] as Map<String, Object?>));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment, PartialComment,
                Comment>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map((el) =>
                    el == null ? null : Comment.classType.fromJson<Comment>(el))
                .whereType<Comment>()
                .toList());
    return _Post._(
      id: id,
      title: title,
      blog: blog,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      blogPostsId: blogPostsId,
    );
  }

  static const PostType classType = PostType();

  static const PostQueryFields<String, Post> _queryFields = PostQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Post, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Post, String> get ID => $id;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<String, Post, String> get $title => _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<String, Post, String> get TITLE => $title;
  @override
  Blog? get blog;

  /// Query field for the [blog] field.
  BlogQueryFields<String, Post> get $blog => _queryFields.$blog;

  /// Query field for the [blog] field.
  @Deprecated(r'Use $blog instead')
  BlogQueryFields<String, Post> get BLOG => $blog;
  @override
  AsyncModelCollection<String, Comment, PartialComment, Comment>? get comments;

  /// Query field for the [comments] field.
  CommentQueryFields<String, Post> get $comments => _queryFields.$comments;

  /// Query field for the [comments] field.
  @Deprecated(r'Use $comments instead')
  CommentQueryFields<String, Post> get COMMENTS => $comments;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get blogPostsId;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Post, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Post, String> get MODEL_IDENTIFIER => $modelIdentifier;
}

class _Post extends Post {
  _Post({
    String? id,
    required this.title,
    this.blog,
    List<Comment>? comments,
  })  : id = id ?? uuid(),
        comments =
            comments == null ? null : AsyncModelCollection.fromList(comments),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        blogPostsId = blog?.id,
        super._();

  const _Post._({
    required this.id,
    required this.title,
    this.blog,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
    this.blogPostsId,
  }) : super._();

  @override
  final String id;

  @override
  final String title;

  @override
  final Blog? blog;

  @override
  final AsyncModelCollection<String, Comment, PartialComment, Comment>?
      comments;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? blogPostsId;
}

abstract class RemotePost extends Post implements RemoteModel<String, Post> {
  const RemotePost._() : super._();
}

class _RemotePost extends RemotePost {
  const _RemotePost({
    required this.id,
    required this.title,
    this.blog,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
    this.blogPostsId,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemotePost.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final blogPostsId =
        json['blogPostsId'] == null ? null : (json['blogPostsId'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Post',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Post',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    final blog = json['blog'] == null
        ? null
        : Blog.classType
            .fromJson<RemoteBlog>((json['blog'] as Map<String, Object?>));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment, PartialComment,
                RemoteComment>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map((el) => el == null
                    ? null
                    : Comment.classType.fromJson<RemoteComment>(el))
                .whereType<RemoteComment>()
                .toList());
    return _RemotePost(
      id: id,
      title: title,
      blog: blog,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      blogPostsId: blogPostsId,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String title;

  @override
  final RemoteBlog? blog;

  @override
  final AsyncModelCollection<String, Comment, PartialComment, Comment>?
      comments;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? blogPostsId;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
