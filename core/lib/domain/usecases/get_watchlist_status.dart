import '../repositories/series_repository.dart';

class GetWatchlistStatus {
  final SeriesRepository repository;

  GetWatchlistStatus(this.repository);

  Future<bool> execute(int id) async {
    return repository.isAddedToWatchlist(id);
  }
}
