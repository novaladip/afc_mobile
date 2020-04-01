import 'dart:io';

import 'package:afc_mobile/features/register/dto/dto.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:afc_mobile/shared/widgets/widgets.dart';

class FormRegister extends StatefulWidget {
  final Function(bool isStudent, RegisterDto dto) onSubmit;
  final bool isLoading;
  final bool isStudent;

  const FormRegister({
    Key key,
    @required this.onSubmit,
    @required this.isLoading,
    @required this.isStudent,
  }) : super(key: key);

  @override
  _FormRegisterState createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final firstNameFocusNode = FocusNode();
  final lastNameController = TextEditingController();
  final lastNameFocusNode = FocusNode();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final passwordConfirmationController = TextEditingController();
  final passwordConfirmationFocusNode = FocusNode();
  final avatarController = TextEditingController();
  File _image;

  handleOnSubmit(bool isStudent) {
    final dto = RegisterDto(
      avatar: _image,
      email: emailController.text,
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      password: passwordController.text,
    );

    widget.onSubmit(isStudent, dto);
  }

  Future getImage() async {
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
      avatarController.text = image.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextInput(
            controller: emailController,
            labelText: 'Email',
            onFieldSubmitted: firstNameFocusNode.requestFocus,
            textInputAction: TextInputAction.next,
          ),
          TextInput(
            labelText: 'First Name',
            controller: firstNameController,
            focusNode: firstNameFocusNode,
            onFieldSubmitted: lastNameFocusNode.requestFocus,
            textInputAction: TextInputAction.next,
          ),
          TextInput(
            labelText: 'Last Name',
            controller: lastNameController,
            focusNode: lastNameFocusNode,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: passwordFocusNode.requestFocus,
          ),
          TextInput(
            labelText: 'Password',
            controller: passwordController,
            focusNode: passwordFocusNode,
            textInputAction: TextInputAction.next,
            obscureText: true,
            onFieldSubmitted: passwordConfirmationFocusNode.requestFocus,
          ),
          TextInput(
            labelText: 'Password Confirmation',
            controller: passwordConfirmationController,
            focusNode: passwordConfirmationFocusNode,
            textInputAction: TextInputAction.done,
            obscureText: true,
          ),
          GestureDetector(
            onTap: getImage,
            child: AbsorbPointer(
              absorbing: true,
              child: TextInput(
                labelText: 'Avatar',
                controller: avatarController,
              ),
            ),
          ),
          SizedBox(height: 15),
          MainButton(
            outline: true,
            onPressed: widget.isStudent ? null : () => handleOnSubmit(false),
            text: 'Sign up as Teacher',
            loading: widget.isLoading && !widget.isStudent,
          ),
          SizedBox(height: 15),
          MainButton(
            loading: widget.isLoading,
            onPressed: () => handleOnSubmit(true),
            text: 'Sign up as Student',
          ),
        ],
      ),
    );
  }
}
