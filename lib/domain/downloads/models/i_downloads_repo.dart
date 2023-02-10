import 'package:dartz/dartz.dart';
import 'package:project2/core/main_failures/main_failure.dart';
import 'package:project2/domain/downloads/models/downloads.dart';

abstract class idownloadsrepo {
  Future<Either<mainfailure, List<Downloads>>> getdownloadsimages();
}
