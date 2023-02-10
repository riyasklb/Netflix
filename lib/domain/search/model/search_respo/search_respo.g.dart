// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRespo _$SearchRespoFromJson(Map<String, dynamic> json) => SearchRespo(
      results: (json['result'] as List<dynamic>?)
          ?.map((e) => searchresultdata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchRespoToJson(SearchRespo instance) =>
    <String, dynamic>{
      'result': instance.results,
    };

searchresultdata _$searchresultdataFromJson(Map<String, dynamic> json) =>
    searchresultdata(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$searchresultdataToJson(searchresultdata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
