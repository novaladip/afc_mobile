import 'dart:io';

import 'package:afc_mobile/common/role/role.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/register_dto_model.dart';
import 'package:afc_mobile/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final form = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameFocusNode = FocusNode();
  final lastNameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  File avatar;

  Widget textInput({
    String labelText,
    bool obscureText = false,
    TextEditingController controller,
    FocusNode focusNode,
    VoidCallback onFieldSubmitted,
    TextInputAction textInputAction,
  }) {
    return TextInput(
      obscureText: obscureText,
      labelColor: Colors.white70,
      color: Colors.white,
      valueColor: Colors.white,
      labelText: labelText,
      controller: controller,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      validator: (v) => validate(v, labelText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        final isLoading = state is RegisterStateLoading ? true : false;
        final loadingStudent =
            state is RegisterStateLoading ? state.studentLoading : false;
        final loadingTeacher =
            state is RegisterStateLoading ? state.teacherLoading : false;

        return SingleChildScrollView(
          child: SafeArea(
            child: BaseContainer(
              child: Form(
                key: form,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 8),
                    AvatarForm(
                      value: avatar,
                      onChange: (file) => setState(() => avatar = file),
                    ),
                    textInput(
                      labelText: 'Email',
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: firstNameFocusNode.requestFocus,
                    ),
                    textInput(
                      labelText: 'First Name',
                      controller: firstNameController,
                      focusNode: firstNameFocusNode,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: lastNameFocusNode.requestFocus,
                    ),
                    textInput(
                      labelText: 'Last Name',
                      controller: lastNameController,
                      focusNode: lastNameFocusNode,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: passwordFocusNode.requestFocus,
                    ),
                    textInput(
                      labelText: 'Password',
                      obscureText: true,
                      controller: passwordController,
                      focusNode: passwordFocusNode,
                      textInputAction: TextInputAction.done,
                    ),
                    SizedBox(height: 15),
                    MainButton(
                      loading: loadingTeacher,
                      text: 'Sign up as Teacher',
                      onPressed:
                          !isLoading ? () => onSubmit(Role.teacher) : null,
                    ),
                    SizedBox(height: 15),
                    MainButton(
                      loading: loadingStudent,
                      text: 'Sign up as Student',
                      onPressed:
                          !isLoading ? () => onSubmit(Role.student) : null,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String validate(String value, String fieldName) {
    if (value.isEmpty) {
      return '$fieldName is cannot be empty';
    }

    return null;
  }

  void onSubmit(String role) {
    final isValid = form.currentState.validate();
    if (!isValid) {
      return;
    }

    context.bloc<RegisterBloc>().add(
          RegisterButtonPressed(
            RegisterDtoModel(
              email: emailController.text.toLowerCase(),
              firstName: firstNameController.text,
              lastName: lastNameController.text,
              password: passwordController.text,
              avatar: avatar,
            ),
            role,
          ),
        );
  }

  @override
  void dispose() {
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    passwordController.dispose();
    firstNameFocusNode.dispose();
    lastNameFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
