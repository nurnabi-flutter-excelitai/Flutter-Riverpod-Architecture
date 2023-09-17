


import 'package:dartz/dartz.dart';

import '../../../../../features/test_api/domain/model/User.dart';
import '../../../../../shared/exceptions/http_exception.dart';

abstract class BppShopSellerAuthenticationRepository {
  Future<Either<AppException, User>> loginUser({required User user});
}
