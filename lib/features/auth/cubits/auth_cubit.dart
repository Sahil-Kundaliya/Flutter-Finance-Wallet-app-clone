import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

  bool signInPasswordView = false;
  bool signUpPasswordView = false;
  bool signUpConfirmPasswordView = false;
  bool newPasswordView = false;
  bool newConfirmPasswordView = false;

  //sign in
  final TextEditingController signInEmailController = TextEditingController();
  final TextEditingController signInPasswordController =
      TextEditingController();

  //sign up
  final TextEditingController signUpEmailController = TextEditingController();
  final TextEditingController signUpNameController = TextEditingController();
  final TextEditingController signUpNumberController = TextEditingController();
  final TextEditingController signUpBODController = TextEditingController();
  final TextEditingController signUpConfirmPasswordController =
      TextEditingController();
  final TextEditingController signUpPasswordController =
      TextEditingController();

  // forgot password
  final TextEditingController forgotEmailController = TextEditingController();

  // new passwords
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController newConfirmPasswordController =
      TextEditingController();

  changeSignInPasswordView({required int index}) {
    switch (index) {
      //0 for signIn, 1 for signUp, 2 for confirm password, 3 for newPassword, 4 for newConfirmPassword
      case 0:
        signInPasswordView = !signInPasswordView;
        break;
      case 1:
        signUpPasswordView = !signUpPasswordView;
        break;
      case 2:
        signUpConfirmPasswordView = !signUpConfirmPasswordView;
        break;
      case 3:
        newPasswordView = !newPasswordView;
        break;
      case 4:
        newConfirmPasswordView = !newConfirmPasswordView;
        break;
    }
    updateState();
  }

  void navigateToFingerprint() {
    emit(NavigateToFingerprintState());
  }

  updateState() {
    emit(UpdateAuthState());
  }
}
