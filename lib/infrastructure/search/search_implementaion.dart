import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/core/main_failures/main_failure.dart';
import 'package:project2/core/strings.dart';
import 'package:project2/domain/core/api_end_points.dart';
import 'package:project2/domain/search/model/search_respo/search_respo.dart';
import 'package:project2/domain/search/search_service.dart';
import 'package:project2/infrastructure/api_key.dart';

import '../../domain/downloads/models/downloads.dart';

@LazySingleton(as: searchservice)
class searchimpl implements searchservice {
  @override
  Future<Either<mainfailure, SearchRespo>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(apiendpoints.search, queryParameters: {
        "query": movieQuery,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchRespo.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(mainfailure.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(mainfailure.clientfailure());
    }
  }
}
