

import 'package:flutter_project/bpp-shop-seller/features/auth/presentation/providers/state/auth_state.dart';
import 'package:flutter_project/services/user_cache_service/domain/repositories/user_cache_repository.dart';
import 'package:flutter_project/shared/domain/models/user/user_model.dart';
import 'package:flutter_project/shared/exceptions/http_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/repositories/authentication_repository.dart';



class SellerAuthNotifier extends StateNotifier<AuthState> {
  final SellerAuthenticationRepository authRepository;
  final UserRepository userRepository;


  SellerAuthNotifier({
    required this.authRepository,
    required this.userRepository,}) : super(const AuthState.initial());



  Future<void> loginUser(String usernumber, String password) async {

    state = const AuthState.loading();
    final response = await authRepository.loginUser(
      user: User(username: usernumber, password: password),
    );


    state = await response.fold((failure) => AuthState.failure(failure),

      (user) async {
        final hasSavedUser = await userRepository.saveUser(user: user);
        if (hasSavedUser) {
          return const AuthState.success();
        }
        return AuthState.failure(CacheFailureException());
      },
    );
  }


}