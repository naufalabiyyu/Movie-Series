import 'package:dartz/dartz.dart';
import 'package:moris/domain/entities/series.dart';
import 'package:moris/domain/repositories/series_repository.dart';

import '../../common/failure.dart';

class GetWatchlistSeries {
  final SeriesRepository repository;

  GetWatchlistSeries(this.repository);

  Future<Either<Failure, List<Series>>> execute() {
    return repository.getWatchlistSeries();
  }
}
