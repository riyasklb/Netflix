import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project2/core/main_failures/main_failure.dart';
import 'package:project2/domain/downloads/models/downloads.dart';
import 'package:project2/domain/downloads/models/downloads.dart';
import 'package:project2/domain/downloads/models/i_downloads_repo.dart';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/downloads/models/downloads.dart';
import '../../domain/downloads/models/downloads.dart';
import '../../domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<downloadsevent, downloadsstate> {
  final idownloadsrepo _downloadsrepo;

  DownloadsBloc(this._downloadsrepo) : super(downloadsstate.initial()) {
    on<_getdownloadsimages>((event, emit) async {
      emit(
        state.copyWith(
          isloading: true,
          downloadsfailureorsuccessoption: none(),
        ),
      );
      final Either<mainfailure, List<Downloads>> downloadsOption =
          await _downloadsrepo.getdownloadsimages();
      log(downloadsOption.toString());
      emit(
        downloadsOption.fold(
            (failure) => state.copyWith(
                isloading: false,
                downloadsfailureorsuccessoption: some(left(failure))),
            (success) => state.copyWith(
                isloading: false,
                downloads: success,
                downloadsfailureorsuccessoption: some(right(success)))),
      );
    });
  }
}
