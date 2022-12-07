import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:moris/data/datasources/db/database_helper.dart';
import 'package:moris/data/datasources/series_local_data_source.dart';
import 'package:moris/data/datasources/series_remote_data_source.dart';
import 'package:moris/domain/repositories/series_repository.dart';

@GenerateMocks([
  SeriesRepository,
  SeriesRemoteDataSource,
  SeriesLocalDataSource,
  DatabaseHelper,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
