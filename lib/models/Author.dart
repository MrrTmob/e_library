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

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Author type in your schema. */
@immutable
class Author extends Model {
  static const classType = const _AuthorModelType();
  final String id;
  final String? _displayName;
  final String? _username;
  final String? _phoneNumber;
  final String? _bio;
  final bool? _gender;
  final String? _city;
  final TemporalDate? _birthday;
  final String? _userId;
  final List<Book>? _books;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get displayName {
    try {
      return _displayName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get username {
    try {
      return _username!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get phoneNumber {
    try {
      return _phoneNumber!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get bio {
    return _bio;
  }
  
  bool? get gender {
    return _gender;
  }
  
  String? get city {
    return _city;
  }
  
  TemporalDate? get birthday {
    return _birthday;
  }
  
  String? get userId {
    return _userId;
  }
  
  List<Book>? get books {
    return _books;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Author._internal({required this.id, required displayName, required username, required phoneNumber, bio, gender, city, birthday, userId, books, createdAt, updatedAt}): _displayName = displayName, _username = username, _phoneNumber = phoneNumber, _bio = bio, _gender = gender, _city = city, _birthday = birthday, _userId = userId, _books = books, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Author({String? id, required String displayName, required String username, required String phoneNumber, String? bio, bool? gender, String? city, TemporalDate? birthday, String? userId, List<Book>? books}) {
    return Author._internal(
      id: id == null ? UUID.getUUID() : id,
      displayName: displayName,
      username: username,
      phoneNumber: phoneNumber,
      bio: bio,
      gender: gender,
      city: city,
      birthday: birthday,
      userId: userId,
      books: books != null ? List<Book>.unmodifiable(books) : books);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Author &&
      id == other.id &&
      _displayName == other._displayName &&
      _username == other._username &&
      _phoneNumber == other._phoneNumber &&
      _bio == other._bio &&
      _gender == other._gender &&
      _city == other._city &&
      _birthday == other._birthday &&
      _userId == other._userId &&
      DeepCollectionEquality().equals(_books, other._books);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Author {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("displayName=" + "$_displayName" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("bio=" + "$_bio" + ", ");
    buffer.write("gender=" + (_gender != null ? _gender!.toString() : "null") + ", ");
    buffer.write("city=" + "$_city" + ", ");
    buffer.write("birthday=" + (_birthday != null ? _birthday!.format() : "null") + ", ");
    buffer.write("userId=" + "$_userId" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Author copyWith({String? id, String? displayName, String? username, String? phoneNumber, String? bio, bool? gender, String? city, TemporalDate? birthday, String? userId, List<Book>? books}) {
    return Author._internal(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      username: username ?? this.username,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      bio: bio ?? this.bio,
      gender: gender ?? this.gender,
      city: city ?? this.city,
      birthday: birthday ?? this.birthday,
      userId: userId ?? this.userId,
      books: books ?? this.books);
  }
  
  Author.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _displayName = json['displayName'],
      _username = json['username'],
      _phoneNumber = json['phoneNumber'],
      _bio = json['bio'],
      _gender = json['gender'],
      _city = json['city'],
      _birthday = json['birthday'] != null ? TemporalDate.fromString(json['birthday']) : null,
      _userId = json['userId'],
      _books = json['books'] is List
        ? (json['books'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Book.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'displayName': _displayName, 'username': _username, 'phoneNumber': _phoneNumber, 'bio': _bio, 'gender': _gender, 'city': _city, 'birthday': _birthday?.format(), 'userId': _userId, 'books': _books?.map((Book? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "author.id");
  static final QueryField DISPLAYNAME = QueryField(fieldName: "displayName");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField PHONENUMBER = QueryField(fieldName: "phoneNumber");
  static final QueryField BIO = QueryField(fieldName: "bio");
  static final QueryField GENDER = QueryField(fieldName: "gender");
  static final QueryField CITY = QueryField(fieldName: "city");
  static final QueryField BIRTHDAY = QueryField(fieldName: "birthday");
  static final QueryField USERID = QueryField(fieldName: "userId");
  static final QueryField BOOKS = QueryField(
    fieldName: "books",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Book).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Author";
    modelSchemaDefinition.pluralName = "Authors";
    
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
      key: Author.DISPLAYNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Author.USERNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Author.PHONENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Author.BIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Author.GENDER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Author.CITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Author.BIRTHDAY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Author.USERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Author.BOOKS,
      isRequired: false,
      ofModelName: (Book).toString(),
      associatedKey: Book.AUTHORID
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

class _AuthorModelType extends ModelType<Author> {
  const _AuthorModelType();
  
  @override
  Author fromJson(Map<String, dynamic> jsonData) {
    return Author.fromJson(jsonData);
  }
}