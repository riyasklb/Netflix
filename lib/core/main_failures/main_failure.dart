import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class mainfailure with _$mainfailure {
  const factory mainfailure.clientfailure() = _Clientfailure;
  const factory mainfailure.serverfailure() = _serverfailure;
}
