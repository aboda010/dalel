import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/functions/custem_toast.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widget/custem_text_field.dart';
import 'package:dalel/features/auth/presentation/widget/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustemSignUpForm extends StatelessWidget {
  const CustemSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessSate) {
          custemToastMessage('Create Account Successfully');
          custemPushReplaceNavigate(context, homeView);
        } else if (state is SignupFaiulreState) {
          custemToastMessage(
            state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

        return Form(
          key: authCubit.signUpKey,
          child: Column(
            children: [
              CustemTextFormField(
                onChanged: (firstname) {
                  authCubit.firstName = firstname;
                },
                labelText: 'First Name',
              ),
              CustemTextFormField(
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
                labelText: 'Last Name',
              ),
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
              const TermsAndCondition(),
              const SizedBox(height: 65),
              state is SignupLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustemBottom(
                      color: authCubit.termsAndConditonsCheckValue == true
                          ? AppColors.primaryColor
                          : Colors.grey[400],
                      text: 'Sign Up',
                      onTap: () {
                        if (authCubit.termsAndConditonsCheckValue == true) {
                          if (authCubit.signUpKey.currentState!.validate()) {
                            authCubit.signupWithEmailAndPassword();
                          }
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
