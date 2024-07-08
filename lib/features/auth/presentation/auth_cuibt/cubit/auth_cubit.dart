import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  bool? termsAndConditonsCheckValue;
  GlobalKey<FormState> signUpKey = GlobalKey();
  bool isPasswordVisible = true;

  signupWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(SignupSuccessSate());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFaiulreState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFaiulreState(
            errorMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignupFaiulreState(errorMessage: e.toString()));
    }
  }

  updateTermsAndConditonsCheckBoxValue({required newValue}) {
    termsAndConditonsCheckValue = newValue;
    emit(TermsAndConditionUpdateState());
  }

  togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(TogglePasswordVisibilityState());
  }
}
