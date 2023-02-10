import 'package:project2/core/strings.dart';
import 'package:project2/infrastructure/api_key.dart';

class apiendpoints {
  static const downloads = '$kbaseurl/trending/all/day?api_key=$apikey';
  static const search = '$kbaseurl/search/movie?api_key=$apikey';
}
