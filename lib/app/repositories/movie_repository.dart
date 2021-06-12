import 'package:dio/dio.dart';
import 'package:teste_tokenlab/app/models/movie_model.dart';

class MovieRepository {
  final dio = Dio();
  final baseUrl = 'https://desafio-mobile.nyc3.digitaloceanspaces.com/movies';

  Future fetchMovies() async {
    try {
      final response = await dio.get(baseUrl);
      final responseData = response.data as List;
      final List<MovieModel> listMovies = responseData.map((movieJson) {
        return MovieModel.fromJson(movieJson);
      }).toList();
      print(listMovies[0]);
    } catch (error) {
      print(error);
    }
  }
}
