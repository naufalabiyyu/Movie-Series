import 'package:flutter/foundation.dart';
import 'package:moris/common/state_enum.dart';
import 'package:moris/domain/entities/series.dart';
import 'package:moris/domain/usecases/search_series.dart';

class SeriesSearchNotifier extends ChangeNotifier {
  final SearchSeries searchSeries;

  SeriesSearchNotifier({required this.searchSeries});

  List<Series> _searchResult = [];
  List<Series> get searchResult => _searchResult;

  RequestState _state = RequestState.Empty;
  RequestState get state => _state;

  String _message = '';
  String get message => _message;

  Future<void> fetchSeriesSearch(String query) async {
    _state = RequestState.Loading;
    notifyListeners();

    final result = await searchSeries.execute(query);
    result.fold(
      (failure) {
        _state = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (data) {
        _state = RequestState.Loaded;
        _searchResult = data;
        notifyListeners();
      },
    );
  }
}
