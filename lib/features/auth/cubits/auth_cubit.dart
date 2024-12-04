import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

  bool signInPasswordView = false;
  bool signUpPasswordView = false;
  bool signUpConfirmPasswordView = false;

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

  changeSignInPasswordView({required int index}) {
    switch (index) {
      //0 for sign in 1 for sign up and 2 is for confirm password
      case 0:
        signInPasswordView = !signInPasswordView;
        break;
      case 1:
        signUpPasswordView = !signUpPasswordView;
        break;
      case 2:
        signUpConfirmPasswordView = !signUpConfirmPasswordView;
        break;
    }
    updateState();
  }

  updateState() {
    emit(UpdateAuthState());
  }
}
