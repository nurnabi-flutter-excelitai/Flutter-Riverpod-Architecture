


import 'package:dartz/dartz.dart';

import '../../../../../shared/data/remote/network_service.dart';
import '../../../../../shared/domain/models/user/user_model.dart';
import '../../../../../shared/exceptions/http_exception.dart';




abstract class BppShopSellerLoginUserDataSource {
  Future<Either<AppException, User>> loginUser({required User user});
}


class BppShopSellerLoginUserRemoteDataSource implements BppShopSellerLoginUserDataSource{

  final NetworkService networkService;
  BppShopSellerLoginUserRemoteDataSource (this.networkService);

  @override
  Future<Either<AppException, User>> loginUser({required User user}) async {
    try {
      final eitherType = await networkService.post(
        '/auth/login',
        data: user.toJson(),
      );

      return eitherType.fold(
            (exception) {
          return Left(exception);
        },

            (response) {
          final user = User.fromJson(response.data);
          // update the token for requests
          networkService.updateHeader(
            {'Authorization': user.token},
          );

          return Right(user);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: 'Unknown error occured',
          statusCode: 1,
          identifier: '${e.toString()}\nLoginUserRemoteDataSource.loginUser',
        ),
      );
    }
  }
}