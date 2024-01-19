import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:cinemapedia/presentation/views/home_views/favorites_view.dart';
import 'package:cinemapedia/presentation/views/home_views/home_view.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter(
  initialLocation: '/',
    routes:[
    //Shell Route Navigation Type
      ShellRoute(
        builder: (context, state, child){
          return HomeScreen(childView: child);
        },
        routes: [

          GoRoute(
            path: '/',
            builder:(context, state) {
              return const HomeView();
            },
            routes: [
              GoRoute(
                path: 'movie/:id',
                name: MovieScreen.name,
                builder: (context, state) => MovieScreen(movieId: state.pathParameters['id'] ?? 'no-id'),
              )
            ]
          ),

          GoRoute(
            path: '/favorites',
            builder:(context, state) {
              return const FavoritesView();
            },
          ),

          // GoRoute(
          //   path: '/categories',
          //   builder:(context, state) {
          //     return const CategoriesView();
          //   },
          // ),
        ]
      )
    ]
  );


//Parent Child Navigation Type
// final appRouter = GoRouter(
//   initialLocation: '/',
//   routes:[
//     GoRoute(
//       path: '/',
//       name: HomeScreen.name,
//       builder: (context, state) => const HomeScreen(),
//       routes: [
//         GoRoute(
//           path: 'movie/:id',
//           name: MovieScreen.name,
//           builder: (context, state) => MovieScreen(movieId: state.pathParameters['id'] ?? 'no-id'),
//         )
//       ]
//     ),
//   ]
// );