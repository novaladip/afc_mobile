import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'attedance_card.dart';
import 'package:afc_mobile/section/section.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class SectionResult extends StatelessWidget {
  final Function onRetry;

  const SectionResult({
    Key key,
    @required this.onRetry,
  }) : super(key: key);

  Widget get emptyScreen =>
      EmptyScreen(message: "Ops there is no data yet, update now.");

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionDetailBloc, SectionDetailState>(
      builder: (context, state) {
        return state.when(
          failure: () => ErrorScreen(onRetry: onRetry),
          loading: () => LoadingIndicator(),
          loaded: (section, status) {
            if (section.photoResult.isEmpty) {
              return EmptyScreen(
                  message: "Ops there is no data yet, update now.");
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ZoomableImage(url: section.photoResult),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Text(
                      'Student List',
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(color: Colors.black),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: section.attendances.length,
                    itemBuilder: (context, index) =>
                        AttendanceCard(attendance: section.attendances[index]),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
