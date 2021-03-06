import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'profile_item.dart';
import 'setting_item.dart';
import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/profile/profile.dart';

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
          CachedNetworkImage(
            imageUrl: profile.avatar,
            imageBuilder: (context, imageProvider) => CircleAvatar(
              radius: 75,
              backgroundColor: Colors.transparent,
              backgroundImage: imageProvider,
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          ProfileItem(
            text: 'Email',
            value: profile.email,
          ),
          ProfileItem(
            text: 'Nama Depan',
            value: profile.firstName,
          ),
          ProfileItem(
            text: 'Nama Belakang',
            value: profile.lastName,
          ),
          SizedBox(height: 10),
          Divider(),
          SettingItem(
            text: 'Ubah Profile',
            icon: Icons.account_circle,
            onPress: () =>
                Navigator.of(context).pushNamed(EditProfilePage.routeName),
          ),
          SettingItem(
            icon: FontAwesomeIcons.signOutAlt,
            text: 'Keluar',
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
