import 'package:dartz/dartz.dart';

import '../../utils/failure.dart';
import '../entities/series_detail.dart';
import '../repositories/series_repository.dart';

class SaveWatchlist {
  final SeriesRepository repository;

  SaveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(SeriesDetail series) {
    return repository.saveWatchlist(series);
  }
}
