import 'package:dartz/dartz.dart';
import 'package:flutter_project/features/dashboard/data/datasource/dashboard_remote_datasource.dart';
import 'package:flutter_project/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:flutter_project/features/test_api/data/datasource/test_api_remote_datasource.dart';
import 'package:flutter_project/features/test_api/domain/model/paginated_comment_response.dart';
import 'package:flutter_project/features/test_api/domain/repositories/test_api_repository.dart';
import 'package:flutter_project/shared/domain/models/paginated_response.dart';
import 'package:flutter_project/shared/exceptions/http_exception.dart';



// class DashboardRepositoryImpl extends DashboardRepository {
//   final DashboardDatasource dashboardDatasource;
//   DashboardRepositoryImpl(this.dashboardDatasource);
//
//   @override
//   Future<Either<AppException, PaginatedResponse>> fetchProducts(
//       {required int skip}) {
//     return dashboardDatasource.fetchPaginatedProducts(skip: skip);
//   }
//
//   @override
//   Future<Either<AppException, PaginatedResponse>> searchProducts(
//       {required int skip, required String query}) {
//     return dashboardDatasource.searchPaginatedProducts(
//         skip: skip, query: query);
//   }
// }

class TestApiRepositoryImpl extends TestApiRepository {
  final TestApiDatasource testApiDatasource;
  TestApiRepositoryImpl(this.testApiDatasource);

  @override
  Future<Either<AppException, PaginatedCommentResponse>> fetchData({required int skip}) {
    return testApiDatasource.fetchData(skip: skip);
  }





}
