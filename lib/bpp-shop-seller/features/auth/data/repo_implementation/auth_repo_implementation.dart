


import 'package:dartz/dartz.dart';

import '../../../../../shared/domain/models/user/user_model.dart';
import '../../../../../shared/exceptions/http_exception.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../data_source/authentication_remote_data_source.dart';

class SellerAuthenticationRepositoryImpl extends SellerAuthenticationRepository {
  final SellerLoginUserDataSource dataSource;
  SellerAuthenticationRepositoryImpl(this.dataSource);
  @override
  Future<Either<AppException, User>> loginUser({required User user}) {
    return dataSource.loginUser(user: user);
  }
}



