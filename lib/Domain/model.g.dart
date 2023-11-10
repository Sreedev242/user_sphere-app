// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelclassImpl _$$ModelclassImplFromJson(Map<String, dynamic> json) =>
    _$ModelclassImpl(
      result: (json['result'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelclassImplToJson(_$ModelclassImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      UserId: json['userId'] as int,
      Id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'userId': instance.UserId,
      'id': instance.Id,
      'title': instance.title,
      'body': instance.body,
    };
