import 'package:dartz/dartz.dart';
import 'package:flutter_project/features/test_api/domain/model/paginated_comment_response.dart';
import 'package:flutter_project/shared/data/remote/remote.dart';
import 'package:flutter_project/shared/domain/models/paginated_response.dart';
import 'package:flutter_project/shared/exceptions/http_exception.dart';
import 'package:flutter_project/shared/globals.dart';

abstract class TestApiDatasource {
  Future<Either<AppException, PaginatedCommentResponse>> fetchData({required int skip});

}

class TestApiRemoteDataSource extends TestApiDatasource{
  final NetworkService networkService;
  TestApiRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, PaginatedCommentResponse>> fetchData({required int skip}) async{

    final response = await networkService.get(
      '/comments',
      queryParameters: {
        'skip': skip,
        'limit': PRODUCTS_PER_PAGE,
      },
    );

    return response.fold(
          (l) => Left(l),
          (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return Left(
            AppException(
              identifier: 'fetchPaginatedData',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final paginatedResponse = PaginatedCommentResponse.fromJson(jsonData);
        return Right(paginatedResponse);
      },
    );

  }

}

