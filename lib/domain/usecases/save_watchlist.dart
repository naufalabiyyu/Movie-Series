import 'package:dartz/dartz.dart';
import 'package:moris/domain/entities/series_detail.dart';
import 'package:moris/domain/repositories/series_repository.dart';

import '../../common/failure.dart';

class SaveWatchlist {
  final SeriesRepository repository;

  SaveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(SeriesDetail series) {
    return repository.saveWatchlist(series);
  }
}
