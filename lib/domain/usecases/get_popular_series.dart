import 'package:dartz/dartz.dart';
import 'package:moris/common/failure.dart';
import 'package:moris/domain/entities/series.dart';
import 'package:moris/domain/repositories/series_repository.dart';

class GetPopularSeries {
  final SeriesRepository repository;

  GetPopularSeries(this.repository);

  Future<Either<Failure, List<Series>>> execute() {
    return repository.getPopularSeries();
  }
}
