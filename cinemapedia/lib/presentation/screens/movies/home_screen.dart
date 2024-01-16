import 'package:cinemapedia/presentation/screens/movies/providers/movies/movies_providers.dart';
import 'package:cinemapedia/presentation/screens/movies/providers/movies/movies_slideshow_provider.dart';
import 'package:cinemapedia/presentation/screens/movies/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {

  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {

  @override
  void initState() {
    super.initState();
    
    ref.read( nowPlayingMoviesProvider.notifier ).loadNextPage();
    ref.read( popularMoviesProvider.notifier ).loadNextPage();
    ref.read( upcomingMoviesProvider.notifier ).loadNextPage();
    ref.read( theBestMoviesProvider.notifier ).loadNextPage();
  }


  @override
  Widget build(BuildContext context) {

    final initialLoading = ref.watch(initialLoadingProvider);
    if(initialLoading) return const FullScreenLoader();

    final slideshowMovies = ref.watch( moviesSlideshowProvider );
    final nowPlayingMovies = ref.watch( nowPlayingMoviesProvider );
    final popularMovies = ref.watch( popularMoviesProvider );
    final upcomingMovies = ref.watch( upcomingMoviesProvider );
    final theBestMovies = ref.watch( theBestMoviesProvider );

    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar()
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index){
              return Column(
                children:[
                  //const CustomAppbar(),
              
                  MoviesSlideshow(movies: slideshowMovies),
              
                  MovieHorizontalListView(
                    movies: nowPlayingMovies,
                    title: 'In theaters',
                    subTitle: 'Monday 20',
                    loadNextPage: () => ref.read(nowPlayingMoviesProvider.notifier).loadNextPage(),
                  ),
              
                  MovieHorizontalListView(
                    movies: upcomingMovies,
                    title: 'Coming next',
                    subTitle: 'This month',
                    loadNextPage: () => ref.read(upcomingMoviesProvider.notifier).loadNextPage(),
                  ),
              
                  MovieHorizontalListView(
                    movies: popularMovies,
                    title: 'Popular',
                    // subTitle: 'This month',
                    loadNextPage: () => ref.read(popularMoviesProvider.notifier).loadNextPage(),
                  ),
              
                  MovieHorizontalListView(
                    movies: theBestMovies,
                    title: 'The best',
                    subTitle: 'All time',
                    loadNextPage: () => ref.read(theBestMoviesProvider.notifier).loadNextPage(),
                  ),

                  const SizedBox(height: 10,)
                ]
              );
            },
            childCount: 1
          )
        )
      ]
    );
  }
}