import 'package:flutter/material.dart';
import 'package:greengrocer/constants/endpoints.dart';
import 'package:greengrocer/models/user_model.dart';
import 'package:greengrocer/services/http_manager.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();

  Future signIn({
    required String email,
    required String password,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        'email': email,
        'password': password,
      },
    );

    if (result['result'] != null) {
      debugPrint('Login funcionou');
      final user = UserModel.fromMap(result['result']);
    } else {
      debugPrint('Login NÃO funcionou');
    }
  }
}
