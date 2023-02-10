import 'package:json_annotation/json_annotation.dart';
import 'package:project2/core/constands.dart';
//import 'package:project2/domain/search/model/search_respo/result.dart';

part 'search_respo.g.dart';

@JsonSerializable()
class SearchRespo {
  @JsonKey(name: 'result')
  List<searchresultdata>? results;

  SearchRespo({
    this.results,
  });

  factory SearchRespo.fromJson(Map<String, dynamic> json) {
    return _$SearchRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespoToJson(this);
}

@JsonSerializable()
class searchresultdata {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  searchresultdata({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory searchresultdata.fromJson(Map<String, dynamic> json) {
    return _$searchresultdataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$searchresultdataToJson(this);
}
