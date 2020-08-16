import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';

import 'package:afc_mobile/profile/profile.dart';
import 'package:afc_mobile/common/utils/show_snackbar.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class EditProfilePage extends StatefulWidget {
  static const routeName = '/edit/profile';

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  EditProfileBloc editProfileBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        brightness: Brightness.light,
      ),
      body: BlocConsumer<EditProfileBloc, EditProfileState>(
        listener: (context, state) {
          state.status.maybeWhen(
            orElse: () {},
            failure: (message) => showBasicSnackBar(
              context,
              title: message,
              color: Colors.red,
            ),
            success: () => Navigator.of(context).pop(),
          );
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state.status.maybeWhen(
              orElse: () => false,
              submitting: () => true,
            ),
            child: BaseContainer(
              child: Column(
                children: <Widget>[
                  AvatarForm(
                    onChange: (file) => editProfileBloc
                        .add(EditProfileEvent.avatarChanged(file.path)),
                    value: state.avatarPath.isEmpty
                        ? null
                        : File(state.avatarPath),
                  ),
                  DisabledTextInputEditProfile(),
                  SizedBox(height: 10),
                  MainButton(
                    color: Colors.black,
                    text: 'Simpan',
                    loading: state.status.maybeWhen(
                      orElse: () => false,
                      submitting: () => true,
                    ),
                    onPressed: () =>
                        editProfileBloc.add(EditProfileEvent.submit()),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    editProfileBloc = context.bloc<EditProfileBloc>();
    super.initState();
  }

  @override
  void dispose() {
    editProfileBloc.add(EditProfileEvent.clear());
    super.dispose();
  }
}

class DisabledTextInputEditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          loaded: (profile) => Column(
            children: <Widget>[
              TextInput(
                enabled: false,
                labelText: 'Email',
                initialValue: profile.email,
              ),
              TextInput(
                enabled: false,
                labelText: 'Nama Depan',
                initialValue: profile.firstName,
              ),
              TextInput(
                enabled: false,
                labelText: 'Nama Belakang',
                initialValue: profile.lastName,
              ),
            ],
          ),
        );
      },
    );
  }
}
