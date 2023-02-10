import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/core/main_failures/main_failure.dart';
import 'package:project2/domain/downloads/models/downloads.dart';
import 'package:project2/domain/downloads/models/i_downloads_repo.dart';
import 'package:project2/domain/search/search_service.dart';

import '../../domain/search/model/search_respo/search_respo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final idownloadsrepo _downloadsservice;
  final searchservice _searchservice;

  SearchBloc(this._downloadsservice, this._searchservice)
      : super(SearchState.initial()) {
    on<initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchresultlist: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(const SearchState(
        searchresultlist: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      final _result = await _downloadsservice.getdownloadsimages();
      final _state = _result.fold(
        (mainfailure f) {
          return const SearchState(
            searchresultlist: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<Downloads> list) {
          return SearchState(
            searchresultlist: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state);
    });

    on<searchmovie>((event, emit) {
      _searchservice.searchMovies(movieQuery: event.movieQuery);
    });
  }
}
