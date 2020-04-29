import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/section/section.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class SectionResult extends StatelessWidget {
  final Function onRetry;

  const SectionResult({
    Key key,
    @required this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionDetailBloc, SectionDetailState>(
      builder: (context, state) {
        return state.when(
          failure: () => ErrorScreen(onRetry: onRetry),
          loading: () => LoadingIndicator(),
          loaded: (section, status) => section.photoResult.isEmpty
              ? EmptyScreen(
                  message: 'Ops there is no data yet, update now!',
                )
              : Text('Y'),
        );
      },
    );
  }
}
