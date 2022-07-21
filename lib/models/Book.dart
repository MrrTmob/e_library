/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Book type in your schema. */
@immutable
class Book extends Model {
  static const classType = const _BookModelType();
  final String id;
  final String? _title;
  final String? _author;
  final String? _page;
  final String? _language;
  final String? _bookUrl;
  final String? _imageUrl;
  final String? _authorID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get author {
    try {
      return _author!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get page {
    return _page;
  }
  
  String? get language {
    return _language;
  }
  
  String get bookUrl {
    try {
      return _bookUrl!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get imageUrl {
    try {
      return _imageUrl!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get authorID {
    try {
      return _authorID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Book._internal({required this.id, required title, required author, page, language, required bookUrl, required imageUrl, required authorID, createdAt, updatedAt}): _title = title, _author = author, _page = page, _language = language, _bookUrl = bookUrl, _imageUrl = imageUrl, _authorID = authorID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Book({String? id, required String title, required String author, String? page, String? language, required String bookUrl, required String imageUrl, required String authorID}) {
    return Book._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      author: author,
      page: page,
      language: language,
      bookUrl: bookUrl,
      imageUrl: imageUrl,
      authorID: authorID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Book &&
      id == other.id &&
      _title == other._title &&
      _author == other._author &&
      _page == other._page &&
      _language == other._language &&
      _bookUrl == other._bookUrl &&
      _imageUrl == other._imageUrl &&
      _authorID == other._authorID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Book {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("author=" + "$_author" + ", ");
    buffer.write("page=" + "$_page" + ", ");
    buffer.write("language=" + "$_language" + ", ");
    buffer.write("bookUrl=" + "$_bookUrl" + ", ");
    buffer.write("imageUrl=" + "$_imageUrl" + ", ");
    buffer.write("authorID=" + "$_authorID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Book copyWith({String? id, String? title, String? author, String? page, String? language, String? bookUrl, String? imageUrl, String? authorID}) {
    return Book._internal(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      page: page ?? this.page,
      language: language ?? this.language,
      bookUrl: bookUrl ?? this.bookUrl,
      imageUrl: imageUrl ?? this.imageUrl,
      authorID: authorID ?? this.authorID);
  }
  
  Book.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _author = json['author'],
      _page = json['page'],
      _language = json['language'],
      _bookUrl = json['bookUrl'],
      _imageUrl = json['imageUrl'],
      _authorID = json['authorID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'author': _author, 'page': _page, 'language': _language, 'bookUrl': _bookUrl, 'imageUrl': _imageUrl, 'authorID': _authorID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "book.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField AUTHOR = QueryField(fieldName: "author");
  static final QueryField PAGE = QueryField(fieldName: "page");
  static final QueryField LANGUAGE = QueryField(fieldName: "language");
  static final QueryField BOOKURL = QueryField(fieldName: "bookUrl");
  static final QueryField IMAGEURL = QueryField(fieldName: "imageUrl");
  static final QueryField AUTHORID = QueryField(fieldName: "authorID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Book";
    modelSchemaDefinition.pluralName = "Books";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Book.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Book.AUTHOR,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Book.PAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Book.LANGUAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Book.BOOKURL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Book.IMAGEURL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Book.AUTHORID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _BookModelType extends ModelType<Book> {
  const _BookModelType();
  
  @override
  Book fromJson(Map<String, dynamic> jsonData) {
    return Book.fromJson(jsonData);
  }
}