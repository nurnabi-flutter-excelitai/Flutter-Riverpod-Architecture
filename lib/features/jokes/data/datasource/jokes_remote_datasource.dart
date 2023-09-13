



import 'package:dartz/dartz.dart';
import 'package:flutter_project/shared/data/remote/network_service.dart';
import 'package:flutter_project/shared/domain/models/jokes_response.dart';

import '../../../../shared/exceptions/http_exception.dart';



abstract class JokesDataSources {
  Future<Either<AppException, JokesResponse>> fetchJokes();

}


class JokesRemoteDataSource extends JokesDataSources{

  final NetworkService networkService;
  JokesRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, JokesResponse>> fetchJokes() async {

    final response = await networkService.get('/random');

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'fetchRandomData',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final jokesResponse = JokesResponse.fromJson(jsonData, jsonData['setup'] ?? []);

        return Right(jokesResponse);
      },
    );



  }




}