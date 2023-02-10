part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<searchresultdata> searchresultlist,
    required List<Downloads> idleList,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;
  factory SearchState.initial() => SearchState(
        searchresultlist: [],
        idleList: [],
        isLoading: false,
        isError: false,
      );
}
