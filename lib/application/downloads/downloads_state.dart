part of 'downloads_bloc.dart';

@freezed
class downloadsstate with _$downloadsstate {
  const factory downloadsstate({
    required bool isloading,
    required List<Downloads> downloads,
    required Option<Either<mainfailure, List<Downloads>>>
        downloadsfailureorsuccessoption,
  }) = _downloadsstate;
  factory downloadsstate.initial() {
    return downloadsstate(
        isloading: false,
        downloadsfailureorsuccessoption: None(),
        downloads: []);
  }
}
