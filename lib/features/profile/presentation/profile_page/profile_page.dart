import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';
import 'bloc/profile_bloc.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/profile';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileBloc _profileBloc;
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileStateFailure) {
            return ErrorScreen(onRetry: getProfile);
          }

          if (state is ProfileStateLoaded) {
            return SafeArea(child: UserProfile(profile: state.profile));
          }

          return LoadingIndicator();
        },
      ),
    );
  }

  @override
  void initState() {
    if (_profileBloc == null) {
      _profileBloc = context.bloc<ProfileBloc>();
    }

    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (initial) {
      initial = false;
      getProfile();
    }
    super.didChangeDependencies();
  }

  void getProfile() {
    _profileBloc.add(GetProfile());
  }
}
