import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'profile_item.dart';
import 'setting_item.dart';
import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/common/models/models.dart';

class UserProfile extends StatelessWidget {
  final User profile;

  const UserProfile({
    Key key,
    @required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
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
          SettingItem(
            text: 'Change Avatar',
            icon: Icons.photo_camera,
            onPress: () {},
          ),
          SettingItem(
            text: 'Change Password',
            icon: FontAwesomeIcons.key,
            onPress: () {},
          ),
          SettingItem(
            icon: FontAwesomeIcons.signOutAlt,
            text: 'Sign Out',
            onPress: () {
              context.bloc<AuthBloc>().add(AuthEvent.loggedOut());
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
