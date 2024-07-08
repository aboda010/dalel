
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
   
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              CustemTextFormField(
                onChanged: (firstname) {
                  BlocProvider.of<AuthCubit>(context).firstName = firstname;
                },
                labelText: 'First Name',
              ),
              CustemTextFormField(
                onChanged: (lastName) {
                  BlocProvider.of<AuthCubit>(context).lastName = lastName;
                },
                labelText: 'Last Name',
              ),
              CustemTextFormField(
                onChanged: (email) {
                  BlocProvider.of<AuthCubit>(context).email = email;
                },
                labelText: 'Email Address',
              ),
              CustemTextFormField(
                onChanged: (password) {
                  BlocProvider.of<AuthCubit>(context).password = password;
                },
                labelText: 'Password',
              ),
              const TermsAndCondition(),
              const SizedBox(height: 65),
              CustemBottom(
                text: 'Sign Up',
                onTap: () {
                  BlocProvider.of<AuthCubit>(context)
                      .signupWithEmailAndPassword();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
