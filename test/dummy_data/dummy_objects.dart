import 'package:moris/data/models/series_table.dart';
import 'package:moris/domain/entities/genre.dart';
import 'package:moris/domain/entities/series.dart';
import 'package:moris/domain/entities/series_detail.dart';

final testSeries = Series(
  backdropPath: "/4QNBIgt5fwgNCN3OSU6BTFv0NGR.jpg",
  genreIds: [16, 10759],
  id: 888,
  name: "Spider-Man",
  originCountry: ["US"],
  originalLanguage: "en",
  originalName: "Spider-Man",
  overview:
      "Bitten by a radioactive spider, Peter Parker develops spider-like superpowers. He uses these to fight crime while trying to balance it with the struggles of his personal life.",
  popularity: 64.599,
  posterPath: "/wXthtEN5kdWA1bHz03lkuCJS6hA.jpg",
  voteAverage: 8.3,
  voteCount: 833,
);

final testSeriesList = [testSeries];

final testSeriesDetail = SeriesDetail(
  adult: false,
  backdropPath: "/cl8NLaoztP877hTSYSy6YIUkChF.jpg",
  genres: [Genre(id: 10764, name: "Reality")],
  id: 210855,
  name: "Now what",
  originalName: "Now what",
  overview:
      "7 young people co-house in Antwerp. They are all at the beginning of their adult life and have to decide what that should look like.",
  popularity: 1358.348,
  posterPath: "/89kiLK0S7Rbfjorvhm0vxTAgAH3.jpg",
  status: "Returning Series",
  tagline: "",
  type: "Reality",
  voteAverage: 5.2,
  voteCount: 4,
);

final testWatchlistSeries = Series.watchlist(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testSeriesTable = SeriesTable(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testSeriesMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'name': 'name',
};
