import 'package:dartz/dartz.dart';
import 'package:moris/common/failure.dart';
import 'package:moris/domain/repositories/series_repository.dart';

import '../entities/series_detail.dart';

class RemoveWatchlist {
  final SeriesRepository repository;

  RemoveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(SeriesDetail series) {
    return repository.removeWatchlist(series);
  }
}
