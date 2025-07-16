import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:litloop/features/home/data/presentation/views/book_details_view.dart';

import '../../features/home/data/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final kHomeView = '/homeView';
  static final kDetailsView = '/detailsView';
  static final kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: kHomeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: kDetailsView,
            builder: (BuildContext context, GoRouterState state) {
              return const BookDetailsView();
            },
          ),
          GoRoute(
            path: kSearchView,
            builder: (BuildContext context, GoRouterState state) {
              return const SearchView();
            },
          ),
        ],
      ),
    ],
  );
}
