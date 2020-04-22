import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';

import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  RegisterBloc registerBloc;
  final form = GlobalKey<FormState>();
  final fNameFocusNode = FocusNode();
  final lNameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  void onSubmit(bool teacher, String avatarPath) {
    final isValid = form.currentState.validate();
    if (!isValid) {
      return;
    }

    if (avatarPath.isEmpty) {
      Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text('Avatar is cannot be empty'),
          ),
        );
      return;
    }

    registerBloc.add(RegisterEvent.submit(teacher));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.isSuccess) {
          Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
        }

        if (state.isFailure) {
          Scaffold.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text('Register failed'),
              ),
            );
        }
      },
      builder: (context, state) {
        return buildContainer(
          isLoading: state.isSubmitting,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AvatarForm(
                onChange: (file) {
                  registerBloc.add(RegisterEvent.changeAvatarPath(file.path));
                },
                value: state.avatarPath.isEmpty ? null : File(state.avatarPath),
              ),
              TextInput(
                labelText: 'Email',
                initialValue: '',
                textInputAction: TextInputAction.next,
                onFieldSubmitted: fNameFocusNode.requestFocus,
                validator: (value) => InputValidator.email(value, 'Email'),
                onChanged: (value) =>
                    registerBloc.add(RegisterEvent.changeEmail(value)),
              ),
              TextInput(
                labelText: 'First Name',
                initialValue: '',
                textInputAction: TextInputAction.next,
                focusNode: fNameFocusNode,
                onFieldSubmitted: lNameFocusNode.requestFocus,
                validator: (value) =>
                    InputValidator.required(value, 'First Name'),
                onChanged: (value) =>
                    registerBloc.add(RegisterEvent.changeFirstName(value)),
              ),
              TextInput(
                labelText: 'Last Name',
                initialValue: '',
                textInputAction: TextInputAction.next,
                focusNode: lNameFocusNode,
                onFieldSubmitted: passwordFocusNode.requestFocus,
                validator: (value) =>
                    InputValidator.required(value, 'Last Name'),
                onChanged: (value) =>
                    registerBloc.add(RegisterEvent.changeLastName(value)),
              ),
              TextInput(
                labelText: 'Password',
                obscureText: true,
                initialValue: '',
                textInputAction: TextInputAction.done,
                focusNode: passwordFocusNode,
                validator: (value) =>
                    InputValidator.required(value, 'Password'),
                onChanged: (value) =>
                    registerBloc.add(RegisterEvent.changePassword(value)),
              ),
              SizedBox(height: 8),
              MainButton(
                text: 'Register as Teacher',
                onPressed: () => onSubmit(true, state.avatarPath),
              ),
              SizedBox(height: 8),
              MainButton(
                outline: true,
                text: 'Register as Student',
                onPressed: () => onSubmit(false, state.avatarPath),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildContainer({
    @required Widget child,
    @required bool isLoading,
  }) {
    return LoadingOverlay(
      isLoading: isLoading,
      child: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: BaseContainer(
              child: Form(
                key: form,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    registerBloc = context.bloc<RegisterBloc>();
    super.initState();
  }

  @override
  void dispose() {
    fNameFocusNode.dispose();
    lNameFocusNode.dispose();
    passwordFocusNode.dispose();
    registerBloc.add(RegisterEvent.clearForm());
    super.dispose();
  }
}
