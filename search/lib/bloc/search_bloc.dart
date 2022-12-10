import 'package:bloc/bloc.dart';
import 'package:core/domain/entities/series.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:search/domain/usecases/search_series.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchSeries _searchSeries;

  SearchBloc(this._searchSeries) : super(SearchEmpty()) {
    on<OnQueryChanged>((event, emit) async {
      final query = event.query;

      emit(SearchLoading());

      final result = await _searchSeries.execute(query);

      result.fold(
        (failure) {
          emit(SearchError(failure.message));
        },
        (data) {
          emit(SearchHasData(data));
        },
      );
    }, transformer: debounce(const Duration(milliseconds: 500)));
  }
}
