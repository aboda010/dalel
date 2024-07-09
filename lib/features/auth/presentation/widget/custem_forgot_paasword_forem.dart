import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/functions/custem_toast.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widget/custem_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustemForgotPasswordForm extends StatelessWidget {
  const CustemForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgotPasswordSuccessSate) {
          custemToastMessage('Check your email to reset password');
          custemPushReplaceNavigate(context, signInView);
        } else if (state is ForgotPasswordFaiulreState) {
          custemToastMessage(
            state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

        return Form(
          key: authCubit.forgotPasswordKey,
          child: Column(
            children: [
              CustemTextFormField(
                onChanged: (email) {
                  authCubit.email = email;
                },
                labelText: 'Email Address',
              ),
              const SizedBox(height: 129),
              state is SignupLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustemBottom(
                      color: AppColors.primaryColor,
                      text: 'Send Reset Password Link',
                      onTap: () {
                        if (authCubit.forgotPasswordKey.currentState!
                            .validate()) {
                          authCubit.resetPasswordWithLink();
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
