part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialize() = initialize;
  const factory SearchEvent.searchmovie({
    required String movieQuery,
  }) = searchmovie;
}
