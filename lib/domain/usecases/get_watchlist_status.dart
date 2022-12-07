import 'package:moris/common/failure.dart';
import 'package:moris/domain/repositories/series_repository.dart';

class GetWatchlistStatus {
  final SeriesRepository repository;

  GetWatchlistStatus(this.repository);

  Future<bool> execute(int id) async {
    return repository.isAddedToWatchlist(id);
  }
}
