import 'package:get_it/get_it.dart';
import 'package:moris/data/datasources/db/database_helper.dart';
import 'package:moris/data/datasources/series_local_data_source.dart';
import 'package:moris/data/datasources/series_remote_data_source.dart';
import 'package:moris/data/repositories/series_repository_impl.dart';
import 'package:moris/domain/repositories/series_repository.dart';
import 'package:moris/domain/usecases/get_on_the_air_series.dart';
import 'package:moris/domain/usecases/get_popular_series.dart';
import 'package:moris/domain/usecases/get_detail_series.dart';
import 'package:moris/domain/usecases/get_series_recommendations.dart';
import 'package:moris/domain/usecases/get_top_rated_series.dart';
import 'package:moris/domain/usecases/get_watchlist_series.dart';
import 'package:moris/domain/usecases/get_watchlist_status.dart';
import 'package:moris/domain/usecases/remove_watchlist.dart';
import 'package:moris/domain/usecases/save_watchlist.dart';
import 'package:moris/domain/usecases/search_series.dart';
import 'package:moris/presentation/provider/on_the_air_notifier.dart';
import 'package:moris/presentation/provider/popular_series_notifier.dart';
import 'package:moris/presentation/provider/series_detail_notifier.dart';
import 'package:moris/presentation/provider/series_list_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:moris/presentation/provider/series_search_notifier.dart';
import 'package:moris/presentation/provider/top_rated_series_notifier.dart';
import 'package:moris/presentation/provider/watchlist_series_notifier.dart';

final locator = GetIt.instance;

void init() {
  // provider
  locator.registerFactory(
    () => SeriesListNotifier(
      getPopularSeries: locator(),
      getTopRatedSeries: locator(),
      getOnTheAirSeries: locator(),
    ),
  );
  locator.registerFactory(
    () => SeriesDetailNotifier(
      getSeriesDetail: locator(),
      getSeriesRecommendations: locator(),
      saveWatchlist: locator(),
      removeWatchlist: locator(),
      getWatchlistStatus: locator(),
    ),
  );
  locator.registerFactory(
    () => PopularSeriesNotifier(locator()),
  );
  locator.registerFactory(
    () => TopRatedSeriesNotifier(getTopRatedSeries: locator()),
  );
  locator.registerFactory(
    () => OnTheAirNotifierSeries(getOnTheAirSeries: locator()),
  );
  locator.registerFactory(
    () => SeriesSearchNotifier(searchSeries: locator()),
  );
  locator.registerFactory(
    () => WatchlistSeriesNotifier(getWatchlistSeries: locator()),
  );

  // use case
  locator.registerLazySingleton(() => GetPopularSeries(locator()));
  locator.registerLazySingleton(() => GetTopRatedSeries(locator()));
  locator.registerLazySingleton(() => GetOnTheAirSeries(locator()));
  locator.registerLazySingleton(() => GetDetailSeries(locator()));
  locator.registerLazySingleton(() => GetSeriesRecommendations(locator()));
  locator.registerLazySingleton(() => SearchSeries(locator()));
  locator.registerLazySingleton(() => SaveWatchlist(locator()));
  locator.registerLazySingleton(() => RemoveWatchlist(locator()));
  locator.registerLazySingleton(() => GetWatchlistSeries(locator()));
  locator.registerLazySingleton(() => GetWatchlistStatus(locator()));

  // repository
  locator.registerLazySingleton<SeriesRepository>(
    () => SeriesRepositoryImpl(
      localDataSource: locator(),
      remoteDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<SeriesRemoteDataSource>(
    () => SeriesRemoteDataSourceImpl(client: locator()),
  );
  locator.registerLazySingleton<SeriesLocalDataSource>(
    () => SeriesLocalDataSourceImpl(databaseHelper: locator()),
  );

  // helper
  locator.registerLazySingleton<DatabaseHelper>(
    () => DatabaseHelper(),
  );

  // external
  locator.registerLazySingleton(() => http.Client());
}
