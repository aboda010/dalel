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
  GlobalKey<FormState> signInKey = GlobalKey();
  bool isPasswordVisible = true;

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      emit(SignInSuccessSate());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFaiulreState(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFaiulreState(
            errorMessage: 'Wrong password provided for that user.'));
      } else {
        emit(
            SignInFaiulreState(errorMessage: 'Check your email and password!'));
      }
    } catch (e) {
      emit(SignInFaiulreState(errorMessage: e.toString()));
    }
  }

  signupWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      verifyEmail();
      emit(SignupSuccessSate());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFaiulreState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFaiulreState(
            errorMessage: 'The account already exists for that email.'));
      } else if (e.code == 'invalid-email') {
        emit(SignupFaiulreState(
            errorMessage: 'The email address is badly formatted.'));
      } else {
        emit(SignupFaiulreState(errorMessage: e.code));
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

  verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }
}
