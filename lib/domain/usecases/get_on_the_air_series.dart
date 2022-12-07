import 'package:dartz/dartz.dart';
import 'package:moris/domain/repositories/series_repository.dart';

import '../../common/failure.dart';
import '../entities/series.dart';

class GetOnTheAirSeries {
  final SeriesRepository repository;

  GetOnTheAirSeries(this.repository);

  Future<Either<Failure, List<Series>>> execute() {
    return repository.getOnTheAirSeries();
  }
}
