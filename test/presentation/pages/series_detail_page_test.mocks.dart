// Mocks generated by Mockito 5.3.2 from annotations
// in moris/test/presentation/pages/series_detail_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i11;
import 'dart:ui' as _i12;

import 'package:mockito/mockito.dart' as _i1;
import 'package:moris/common/state_enum.dart' as _i9;
import 'package:moris/domain/entities/series.dart' as _i10;
import 'package:moris/domain/entities/series_detail.dart' as _i7;
import 'package:moris/domain/usecases/get_detail_series.dart' as _i2;
import 'package:moris/domain/usecases/get_series_recommendations.dart' as _i3;
import 'package:moris/domain/usecases/get_watchlist_status.dart' as _i6;
import 'package:moris/domain/usecases/remove_watchlist.dart' as _i5;
import 'package:moris/domain/usecases/save_watchlist.dart' as _i4;
import 'package:moris/presentation/provider/series_detail_notifier.dart' as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGetDetailSeries_0 extends _i1.SmartFake
    implements _i2.GetDetailSeries {
  _FakeGetDetailSeries_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetSeriesRecommendations_1 extends _i1.SmartFake
    implements _i3.GetSeriesRecommendations {
  _FakeGetSeriesRecommendations_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSaveWatchlist_2 extends _i1.SmartFake implements _i4.SaveWatchlist {
  _FakeSaveWatchlist_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRemoveWatchlist_3 extends _i1.SmartFake
    implements _i5.RemoveWatchlist {
  _FakeRemoveWatchlist_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetWatchlistStatus_4 extends _i1.SmartFake
    implements _i6.GetWatchlistStatus {
  _FakeGetWatchlistStatus_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSeriesDetail_5 extends _i1.SmartFake implements _i7.SeriesDetail {
  _FakeSeriesDetail_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SeriesDetailNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockSeriesDetailNotifier extends _i1.Mock
    implements _i8.SeriesDetailNotifier {
  MockSeriesDetailNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetDetailSeries get getSeriesDetail => (super.noSuchMethod(
        Invocation.getter(#getSeriesDetail),
        returnValue: _FakeGetDetailSeries_0(
          this,
          Invocation.getter(#getSeriesDetail),
        ),
      ) as _i2.GetDetailSeries);
  @override
  _i3.GetSeriesRecommendations get getSeriesRecommendations =>
      (super.noSuchMethod(
        Invocation.getter(#getSeriesRecommendations),
        returnValue: _FakeGetSeriesRecommendations_1(
          this,
          Invocation.getter(#getSeriesRecommendations),
        ),
      ) as _i3.GetSeriesRecommendations);
  @override
  _i4.SaveWatchlist get saveWatchlist => (super.noSuchMethod(
        Invocation.getter(#saveWatchlist),
        returnValue: _FakeSaveWatchlist_2(
          this,
          Invocation.getter(#saveWatchlist),
        ),
      ) as _i4.SaveWatchlist);
  @override
  _i5.RemoveWatchlist get removeWatchlist => (super.noSuchMethod(
        Invocation.getter(#removeWatchlist),
        returnValue: _FakeRemoveWatchlist_3(
          this,
          Invocation.getter(#removeWatchlist),
        ),
      ) as _i5.RemoveWatchlist);
  @override
  _i6.GetWatchlistStatus get getWatchlistStatus => (super.noSuchMethod(
        Invocation.getter(#getWatchlistStatus),
        returnValue: _FakeGetWatchlistStatus_4(
          this,
          Invocation.getter(#getWatchlistStatus),
        ),
      ) as _i6.GetWatchlistStatus);
  @override
  _i7.SeriesDetail get series => (super.noSuchMethod(
        Invocation.getter(#series),
        returnValue: _FakeSeriesDetail_5(
          this,
          Invocation.getter(#series),
        ),
      ) as _i7.SeriesDetail);
  @override
  _i9.RequestState get seriesState => (super.noSuchMethod(
        Invocation.getter(#seriesState),
        returnValue: _i9.RequestState.Empty,
      ) as _i9.RequestState);
  @override
  List<_i10.Series> get seriesRecommendations => (super.noSuchMethod(
        Invocation.getter(#seriesRecommendations),
        returnValue: <_i10.Series>[],
      ) as List<_i10.Series>);
  @override
  _i9.RequestState get recommendationState => (super.noSuchMethod(
        Invocation.getter(#recommendationState),
        returnValue: _i9.RequestState.Empty,
      ) as _i9.RequestState);
  @override
  String get message => (super.noSuchMethod(
        Invocation.getter(#message),
        returnValue: '',
      ) as String);
  @override
  bool get isAddedtoWatchlist => (super.noSuchMethod(
        Invocation.getter(#isAddedtoWatchlist),
        returnValue: false,
      ) as bool);
  @override
  String get watchlistMessage => (super.noSuchMethod(
        Invocation.getter(#watchlistMessage),
        returnValue: '',
      ) as String);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  _i11.Future<void> fetchDetailSeries(int? id) => (super.noSuchMethod(
        Invocation.method(
          #fetchDetailSeries,
          [id],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  _i11.Future<void> addWatchlist(_i7.SeriesDetail? series) =>
      (super.noSuchMethod(
        Invocation.method(
          #addWatchlist,
          [series],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  _i11.Future<void> removeWatchList(_i7.SeriesDetail? series) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeWatchList,
          [series],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  _i11.Future<void> loadWatchlistStatus(int? id) => (super.noSuchMethod(
        Invocation.method(
          #loadWatchlistStatus,
          [id],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  void addListener(_i12.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i12.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
