import 'package:get/get.dart';
import 'package:greengrocer/screens/auth/repository/auth_repository.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final AuthRepository _authRepository = AuthRepository();

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;
    await _authRepository.signIn(email: email, password: password);
    isLoading.value = false;
  }
}
