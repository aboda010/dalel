import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
    late String? firstName;
  late String? lastName;
  late String? email;
  late String? password;


  signupWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());
      final credential =
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
}
