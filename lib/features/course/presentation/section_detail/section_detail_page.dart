import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';
import 'bloc/section_detail_bloc.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class SectionDetailPage extends StatefulWidget {
  static const routeName = '/section-detail';

  @override
  _SectionDetailPageState createState() => _SectionDetailPageState();
}

class _SectionDetailPageState extends State<SectionDetailPage> {
  bool initial = true;

  Widget get loadingIndicator => LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionDetailBloc, SectionDetailState>(
      builder: (context, state) {
        final isLoading = state is SectionDetailStateLoading;

        return Scaffold(
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SectionDetailHeader(),
                if (isLoading) loadingIndicator,
                PhotoForm(
                  isLoading: isLoading,
                  sectionId: state is SectionDetailStateLoaded
                      ? state.section.id
                      : null,
                ),
                AttendancesListForm(isLoading: isLoading),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    if (initial) {
      initial = false;
      getSectionDetail();
    }

    super.didChangeDependencies();
  }

  void getSectionDetail() {
    final String sectionId = ModalRoute.of(context).settings.arguments;
    context.bloc<SectionDetailBloc>().add(GetSectionDetail(sectionId));
  }
}
