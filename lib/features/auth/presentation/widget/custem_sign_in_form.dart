import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/functions/custem_toast.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widget/custem_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustemSignInForm extends StatelessWidget {
  const CustemSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessSate) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? custemPushReplaceNavigate(context, homeView)
              : custemToastMessage('Please verify your email address');
        } else if (state is SignInFaiulreState) {
          custemToastMessage(
            state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

        return Form(
          key: authCubit.signInKey,
          child: Column(
            children: [
              CustemTextFormField(
                onChanged: (email) {
                  authCubit.email = email;
                },
                labelText: 'Email Address',
              ),
              CustemTextFormField(
                isPasswordField: authCubit.isPasswordVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    authCubit.togglePasswordVisibility();
                  },
                  icon: Icon(
                    authCubit.isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
                onChanged: (password) {
                  authCubit.password = password;
                },
                labelText: 'Password',
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password ?',
                      style: AppTextStyles.poppinsTextStyle600Size12
                          .copyWith(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 65),
              state is SignInLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustemBottom(
                      color: AppColors.primaryColor,
                      text: 'Sign In',
                      onTap: () {
                        if (authCubit.signInKey.currentState!.validate()) {
                          authCubit.signInWithEmailAndPassword();
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
