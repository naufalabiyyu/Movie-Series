import 'package:about/about_page.dart';
import 'package:core/core.dart';
import 'package:core/presentation/pages/home_series_page.dart';
import 'package:core/presentation/pages/on_the_air_series_page.dart';
import 'package:core/presentation/pages/popular_series_page.dart';
import 'package:core/presentation/pages/series_detail_page.dart';
import 'package:core/presentation/pages/top_rated_series_page.dart';
import 'package:core/presentation/pages/watchlist_series_page.dart';
import 'package:core/presentation/provider/on_the_air_notifier.dart';
import 'package:core/presentation/provider/popular_series_notifier.dart';
import 'package:core/presentation/provider/series_detail_notifier.dart';
import 'package:core/presentation/provider/series_list_notifier.dart';
import 'package:core/presentation/provider/top_rated_series_notifier.dart';
import 'package:core/presentation/provider/watchlist_series_notifier.dart';
import 'package:core/presentation/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:moris/injection.dart' as di;
import 'package:search/presentation/pages/search_page.dart';
import 'package:search/presentation/provider/series_search_notifier.dart';

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<SeriesListNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<SeriesDetailNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<PopularSeriesNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TopRatedSeriesNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<OnTheAirNotifierSeries>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<SeriesSearchNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<WatchlistSeriesNotifier>(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          colorScheme: kColorScheme,
          primaryColor: kRichBlack,
          scaffoldBackgroundColor: kRichBlack,
          textTheme: kTextTheme,
        ),
        home: Material(
          child: CustomDrawer(
            content: HomeSeriesPage(),
          ),
        ),
        navigatorObservers: [routeObserver],
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/home':
              return MaterialPageRoute(builder: (_) => HomeSeriesPage());
            case PopularSeriesPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => PopularSeriesPage());
            case TopRatedSeriesPage.ROUTE_NAME:
              return CupertinoPageRoute(
                  builder: (context) => TopRatedSeriesPage());
            case OnTheAirSeriesPage.ROUTE_NAME:
              return CupertinoPageRoute(
                  builder: (context) => OnTheAirSeriesPage());
            case SeriesDetailPage.ROUTE_NAME:
              final id = settings.arguments as int;
              return MaterialPageRoute(
                builder: (_) => SeriesDetailPage(id: id),
                settings: settings,
              );
            case SearchPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => SearchPage());
            case WatchlistSeriesPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => WatchlistSeriesPage());
            case AboutPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => AboutPage());
            default:
              return MaterialPageRoute(
                builder: (_) {
                  return const Scaffold(
                    body: Center(child: Text('Page not found :(')),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
