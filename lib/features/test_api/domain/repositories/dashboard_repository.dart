import 'package:dartz/dartz.dart';
import 'package:flutter_project/features/test_api/domain/model/paginated_comment_response.dart';
import 'package:flutter_project/shared/domain/models/paginated_response.dart';
import 'package:flutter_project/shared/exceptions/http_exception.dart';


abstract class TestApiRepository {
  Future<Either<AppException, PaginatedCommentResponse>> fetchData({required int skip});
}
