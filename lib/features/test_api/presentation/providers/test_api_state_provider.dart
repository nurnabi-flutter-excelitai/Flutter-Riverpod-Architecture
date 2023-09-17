//
import 'package:flutter_project/features/dashboard/domain/providers/dashboard_providers.dart';
import 'package:flutter_project/features/dashboard/presentation/providers/state/dashboard_notifier.dart';
import 'package:flutter_project/features/dashboard/presentation/providers/state/dashboard_state.dart';
import 'package:flutter_project/features/test_api/domain/providers/test_api_providers.dart';
import 'package:flutter_project/features/test_api/presentation/providers/state/test_api_notifier.dart';
import 'package:flutter_project/features/test_api/presentation/providers/state/test_api_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final testApiNotifierProvider = StateNotifierProvider<TestApiNotifier, TestApiState>((ref) {
  final repository = ref.watch(testApiRepositoryProvider);
  return TestApiNotifier(repository)..fetchTestApiData();
});
