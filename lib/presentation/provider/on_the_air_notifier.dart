import 'package:flutter/foundation.dart';
import 'package:moris/common/state_enum.dart';
import 'package:moris/domain/entities/series.dart';
import 'package:moris/domain/usecases/get_on_the_air_series.dart';

class OnTheAirNotifierSeries extends ChangeNotifier {
  final GetOnTheAirSeries getOnTheAirSeries;

  OnTheAirNotifierSeries({required this.getOnTheAirSeries});

  RequestState _state = RequestState.Empty;
  RequestState get state => _state;

  List<Series> _series = [];
  List<Series> get series => _series;

  String _message = '';
  String get message => _message;

  Future<void> fetchOnTheAirSeries() async {
    _state = RequestState.Loading;
    notifyListeners();

    final result = await getOnTheAirSeries.execute();

    result.fold(
      (failure) {
        _state = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (dataSeries) {
        _state = RequestState.Loaded;
        _series = dataSeries;
        notifyListeners();
      },
    );
  }
}
