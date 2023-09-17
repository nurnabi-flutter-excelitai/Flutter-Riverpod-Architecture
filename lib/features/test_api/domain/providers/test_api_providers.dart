
import 'package:flutter_project/features/test_api/data/datasource/test_api_remote_datasource.dart';
import 'package:flutter_project/features/test_api/data/repositories/test_api_repository.dart';
import 'package:flutter_project/features/test_api/domain/repositories/test_api_repository.dart';
import 'package:flutter_project/shared/data/remote/network_service.dart';
import 'package:flutter_project/shared/domain/providers/dio_network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final testApiDatasourceProvider = Provider.family<TestApiDatasource, NetworkService>(
  (_, networkService) => TestApiRemoteDataSource(networkService),
);

final testApiRepositoryProvider = Provider<TestApiRepository>((ref) {
  final networkService = ref.watch(netwokServiceProvider);
  final datasource = ref.watch(testApiDatasourceProvider(networkService));
  final respository = TestApiRepositoryImpl(datasource);

  return respository;
});
