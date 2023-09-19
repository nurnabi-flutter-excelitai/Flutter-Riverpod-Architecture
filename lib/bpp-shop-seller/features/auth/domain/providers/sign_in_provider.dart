


import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/data/remote/network_service.dart';
import '../../../../../shared/domain/providers/dio_network_service_provider.dart';
import '../../data/data_source/authentication_remote_data_source.dart';
import '../../data/repo_implementation/auth_repo_implementation.dart';
import '../repositories/authentication_repository.dart';

final sellerauthdataSourceProvider = Provider.family<SellerLoginUserDataSource, NetworkService>((_, networkService) => SellerLoginUserRemoteDataSource(networkService),);

final sellerauthRepositoryProvider = Provider<SellerAuthenticationRepository>(
      (ref) {
    final NetworkService networkService = ref.watch(netwokServiceProvider);
    final SellerLoginUserDataSource dataSource = ref.watch(sellerauthdataSourceProvider(networkService));
    return SellerAuthenticationRepositoryImpl(dataSource);
  },
);
