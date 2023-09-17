// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_project/features/test_api/domain/model/Comments.dart';
import 'package:flutter_project/shared/domain/models/product/product_model.dart';

enum TestApiConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllProducts
}

class TestApiState extends Equatable {
  final List<Comments> commentsList;
  final int total;
  final int page;
  final bool hasData;
  final TestApiConcreteState state;
  final String message;
  final bool isLoading;


  const TestApiState({
    this.commentsList = const [],
    this.isLoading = false,
    this.hasData = false,
    this.state = TestApiConcreteState.initial,
    this.message = '',
    this.page = 0,
    this.total = 0,
  });


  const TestApiState.initial({
    this.commentsList = const [],
    this.total = 0,
    this.page = 0,
    this.isLoading = false,
    this.hasData = false,
    this.state = TestApiConcreteState.initial,
    this.message = '',
  });


  TestApiState copyWith({
    List<Comments>? commentsList,
    int? total,
    int? page,
    bool? hasData,
    TestApiConcreteState? state,
    String? message,
    bool? isLoading,
  }) {
    return TestApiState(
      isLoading: isLoading ?? this.isLoading,
      commentsList: commentsList ?? this.commentsList,
      total: total ?? this.total,
      page: page ?? this.page,
      hasData: hasData ?? this.hasData,
      state: state ?? this.state,
      message: message ?? this.message,
    );
  }

  @override
  String toString() {
    return 'DashboardState('
        'isLoading:$isLoading, '
        'productLength: ${commentsList.length},'
        'total:$total page: $page, '
        'hasData: $hasData, '
        'state: $state, message: $message)';
  }

  @override
  List<Object?> get props => [commentsList, page, hasData, state, message];
}
