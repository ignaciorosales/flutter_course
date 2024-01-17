import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/datasources/models/moviedb/credits_response.dart';

class ActorMapper {

  static Actor castToEntity (Cast cast) => Actor(
    id: cast.id, 
    name: cast.name, 
    profilePath: cast.profilePath != null 
      ? 'https://image.tmdb.org/t/p/w500${ cast.profilePath }' 
      : 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_640.png', 
    character: cast.character,
  );

}