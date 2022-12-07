import 'package:dartz/dartz.dart';
import 'package:moris/domain/entities/series.dart';
import 'package:moris/domain/repositories/series_repository.dart';

import '../../common/failure.dart';

class SearchSeries {
  final SeriesRepository repository;

  SearchSeries(this.repository);

  Future<Either<Failure, List<Series>>> execute(String query) {
    return repository.searchSeries(query);
  }
}
