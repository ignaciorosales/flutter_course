import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/datasources/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/datasources/models/moviedb/movie_moviedb.dart';

class MovieMapper {

  static  Movie movieDbToEntity(MovieMovieDB moviedb) => Movie(
    adult: moviedb.adult, 
    backdropPath: (moviedb.backdropPath != '') 
      ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
      : 'https://static.displate.com/460x640/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.avif', 
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
    id: moviedb.id, 
    originalLanguage: moviedb.originalLanguage, 
    originalTitle: moviedb.originalTitle, 
    overview: moviedb.overview, 
    popularity: moviedb.popularity, 
    posterPath: (moviedb.posterPath != '') 
      ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
      : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXPvrvfQNIfpeNcGLkFJxbC8fR6NwZEBn10BdME3s-oBzC_6qMo0IZ0GRpFi_pCTQSIzI&usqp=CAU',
    releaseDate: moviedb.releaseDate ?? DateTime.now(), 
    title: moviedb.title, 
    video: moviedb.video, 
    voteAverage: moviedb.voteAverage, 
    voteCount: moviedb.voteCount
    );

     static  Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
    adult: moviedb.adult, 
    backdropPath: (moviedb.backdropPath != '') 
      ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
      : 'https://static.displate.com/460x640/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.avif', 
    genreIds: moviedb.genres.map((e) => e.name).toList(),
    id: moviedb.id, 
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle, 
    overview: moviedb.overview, 
    popularity: moviedb.popularity, 
    posterPath: (moviedb.posterPath != '') 
      ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
      : 'https://static.displate.com/460x640/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.avif',
    releaseDate: moviedb.releaseDate, 
    title: moviedb.title, 
    video: moviedb.video, 
    voteAverage: moviedb.voteAverage, 
    voteCount: moviedb.voteCount
    );


}