


import 'package:flutter_project/features/jokes/data/datasource/jokes_remote_datasource.dart';
import 'package:flutter_project/features/jokes/data/repositores/jokes_repositories_impl.dart';
import 'package:flutter_project/features/jokes/domain/repositories/jokes_repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/data/remote/network_service.dart';
import '../../../../shared/domain/providers/dio_network_service_provider.dart';

final jokesDataSourceProvider=
Provider.family<JokesDataSources, NetworkService>(
      (_, networkService) => JokesRemoteDataSource(networkService),
);

final jokesReposotoriesProvider = Provider<JokesRepository>((ref) {
  final networkService = ref.watch(netwokServiceProvider);
  final datasources = ref.watch(jokesDataSourceProvider(networkService));
  final respository = JokesRepositoryImpl(datasources);
  return respository;
});
