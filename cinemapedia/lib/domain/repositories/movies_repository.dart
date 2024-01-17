import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieRepository{

  Future<List<Movie>> getNowPlaying({int page = 1});
  
  Future<List<Movie>> getPopular({int page = 1});
  
  Future<List<Movie>> getComingNext({int page = 1});
  
  Future<List<Movie>> getTheBest({int page = 1});

  Future<Movie> getMovieById(String id);

  Future<List<Movie>> searchMovies(String query);

}