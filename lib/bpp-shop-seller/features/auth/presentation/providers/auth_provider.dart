




import 'package:flutter_project/bpp-shop-seller/features/auth/presentation/providers/state/auth_notifier.dart';
import 'package:flutter_project/bpp-shop-seller/features/auth/presentation/providers/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../services/user_cache_service/domain/providers/user_cache_provider.dart';
import '../../../../../services/user_cache_service/domain/repositories/user_cache_repository.dart';
import '../../domain/providers/sign_in_provider.dart';
import '../../domain/repositories/authentication_repository.dart';


final sellerauthStateNotifierProvider = StateNotifierProvider<SellerAuthNotifier, AuthState>((ref) {

  final SellerAuthenticationRepository sellerauthenticationRepository = ref.watch(sellerauthRepositoryProvider);
  final UserRepository userRepository = ref.watch(userLocalRepositoryProvider);
  return SellerAuthNotifier(
    authRepository: sellerauthenticationRepository,
    userRepository: userRepository,
  );
},
);
