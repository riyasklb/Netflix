import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/core/api_end_points.dart';
import 'package:project2/domain/downloads/models/downloads.dart';

import 'package:project2/core/main_failures/main_failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/downloads/models/i_downloads_repo.dart';

@LazySingleton(as: idownloadsrepo)
class DownloadsRepositry implements idownloadsrepo {
  @override
  Future<Either<mainfailure, List<Downloads>>> getdownloadsimages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(apiendpoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(mainfailure.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(mainfailure.clientfailure());
    }
  }
}
