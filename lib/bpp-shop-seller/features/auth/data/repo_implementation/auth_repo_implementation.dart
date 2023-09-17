

import 'package:dartz/dartz.dart';
import 'package:flutter_project/bpp-shop-seller/features/auth/domain/repositories/authentication_repository.dart';
import 'package:flutter_project/features/test_api/domain/model/User.dart';
import 'package:flutter_project/shared/exceptions/http_exception.dart';

class BppShopSellerAuthenticationRepoImpl extends BppShopSellerAuthenticationRepository{
  @override
  Future<Either<AppException, User>> loginUser({required User user}) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }
  
  
}