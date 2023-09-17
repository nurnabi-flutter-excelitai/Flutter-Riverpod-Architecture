import 'package:dartz/dartz.dart';
import 'package:flutter_project/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:flutter_project/features/dashboard/presentation/providers/state/dashboard_state.dart';
import 'package:flutter_project/features/test_api/domain/model/paginated_comment_response.dart';
import 'package:flutter_project/features/test_api/domain/repositories/test_api_repository.dart';
import 'package:flutter_project/features/test_api/presentation/providers/state/test_api_state.dart';
import 'package:flutter_project/shared/domain/models/paginated_response.dart';
import 'package:flutter_project/shared/domain/models/product/product_model.dart';
import 'package:flutter_project/shared/exceptions/http_exception.dart';
import 'package:flutter_project/shared/globals.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestApiNotifier extends StateNotifier<TestApiState> {
  final TestApiRepository testApiRepository;

  TestApiNotifier(this.testApiRepository,) : super(const TestApiState.initial());

  bool get isFetching =>
      state.state != TestApiConcreteState.loading &&
      state.state != TestApiConcreteState.fetchingMore;

  Future<void> fetchTestApiData() async {
    if (isFetching && state.state != TestApiConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0
            ? TestApiConcreteState.fetchingMore
            : TestApiConcreteState.loading,
        isLoading: true,
      );

      final response = await testApiRepository.fetchData(skip: state.page * PRODUCTS_PER_PAGE);

      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: TestApiConcreteState.fetchedAllProducts,
        message: 'No more products available',
        isLoading: false,
      );
    }
  }
  

  void updateStateFromResponse(Either<AppException, PaginatedCommentResponse> response) {
    response.fold((failure) {
      state = state.copyWith(
        state: TestApiConcreteState.failure,
        message: failure.message,
        isLoading: false,
      );
    }, (data) {

      // final productList = data.data.map((e) => Product.fromJson(e)).toList();
      final productList = data.comments;

      final totalProducts = [...state.commentsList, ...productList!];

      state = state.copyWith(
        commentsList: totalProducts,
        state: totalProducts.length == data.total
            ? TestApiConcreteState.fetchedAllProducts
            : TestApiConcreteState.loaded,
        hasData: true,
        message: totalProducts.isEmpty ? 'No products found' : '',
        page: totalProducts.length ~/ PRODUCTS_PER_PAGE,
        total: data.total,
        isLoading: false,
      );
    });
  }

  void resetState() {
    state = const TestApiState.initial();
  }
}
