import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/profile/profile.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            loading: () => LoadingIndicator(),
            loaded: (p) => Text(p.email),
            failure: () => ErrorScreen(onRetry: null),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    fetchProfile();
    super.initState();
  }

  void fetchProfile() {
    context.bloc<ProfileBloc>().add(ProfileEvent.fetch());
  }
}
