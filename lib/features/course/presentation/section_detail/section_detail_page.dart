import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';
import 'bloc/section_detail_bloc.dart';

class SectionDetailPage extends StatefulWidget {
  static const routeName = '/section-detail';

  @override
  _SectionDetailPageState createState() => _SectionDetailPageState();
}

class _SectionDetailPageState extends State<SectionDetailPage> {
  bool initial = true;

  List<Widget> get loadedWiget => [
        PhotoForm(),
      ];

  Widget get loadingIndicator => Expanded(child: LoadingIndicator());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionDetailBloc, SectionDetailState>(
      builder: (context, state) {
        final isLoading = state is SectionDetailStateLoading;

        return Scaffold(
          body: Column(
            children: <Widget>[
              SectionDetailHeader(),
              if (isLoading) loadingIndicator,
              if (!isLoading) ...loadedWiget,
            ],
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
