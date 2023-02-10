import 'package:dartz/dartz.dart';
import 'package:project2/core/main_failures/main_failure.dart';
import 'package:project2/domain/search/model/search_respo/search_respo.dart';

abstract class searchservice {
  Future<Either<mainfailure, SearchRespo>> searchMovies({
    required String movieQuery,
  });
}
