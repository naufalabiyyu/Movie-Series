import 'package:dartz/dartz.dart';
import 'package:moris/domain/entities/series_detail.dart';
import 'package:moris/domain/repositories/series_repository.dart';

import '../../common/failure.dart';

class GetDetailSeries {
  final SeriesRepository repository;

  GetDetailSeries(this.repository);

  Future<Either<Failure, SeriesDetail>> execute(int id) {
    return repository.getSeriesDetail(id);
  }
}
