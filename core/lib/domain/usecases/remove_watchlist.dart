import 'package:dartz/dartz.dart';

import '../../utils/failure.dart';
import '../entities/series_detail.dart';
import '../repositories/series_repository.dart';

class RemoveWatchlist {
  final SeriesRepository repository;

  RemoveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(SeriesDetail series) {
    return repository.removeWatchlist(series);
  }
}
