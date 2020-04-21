import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'setting.dart';
import 'profile_item.dart';
import 'package:afc_mobile/shared/entities/entities.dart';
import 'package:afc_mobile/features/auth/presentation/presentation.dart';
import 'package:afc_mobile/features/auth/presentation/splash_screen/bloc/auth_bloc.dart';

class UserProfile extends StatelessWidget {
  final User profile;

  const UserProfile({
    Key key,
    @required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 8),
          CircleAvatar(
            radius: 75,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(profile.avatar),
          ),
          SizedBox(height: 10),
          Divider(),
          ProfileItem(
            text: 'Email',
            value: profile.email,
          ),
          ProfileItem(
            text: 'First Name',
            value: profile.firstName,
          ),
          ProfileItem(
            text: 'Last Name',
            value: profile.lastName,
          ),
          SizedBox(height: 10),
          Divider(),
          Setting(
            text: 'Change Avatar',
            icon: Icons.photo_camera,
            onPress: () {},
          ),
          Setting(
            text: 'Change Password',
            icon: Icons.lock_outline,
            onPress: () {},
          ),
          Setting(
            icon: Icons.subdirectory_arrow_right,
            text: 'Sign Out',
            onPress: () {
              context.bloc<AuthBloc>().add(LoggedOut());
              Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
            },
          ),
          SizedBox(height: 10),
          Divider(),
        ],
      ),
    );
  }
}
