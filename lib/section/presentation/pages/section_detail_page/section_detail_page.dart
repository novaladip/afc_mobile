import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/widgets.dart';
import 'package:afc_mobile/section/section.dart';
import 'package:afc_mobile/teacher/teacher.dart';

class SectionDetailPage extends StatefulWidget {
  static const routeName = '/section/detail';

  @override
  _SectionDetailPageState createState() => _SectionDetailPageState();
}

class _SectionDetailPageState extends State<SectionDetailPage>
    with SingleTickerProviderStateMixin {
  bool initial = true;
  TabController _controller;

  @override
  Widget build(BuildContext context) {
    final section = ModalRoute.of(context).settings.arguments as Section;

    return BlocConsumer<SectionDetailBloc, SectionDetailState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          failure: () {
            if (!initial) initial = true;
          },
          loaded: (section, status) {
            if (initial) {
              // CHANGE to false, so this block will never be CALLED AGAIN
              // AFTER successfully load the section detail
              initial = false;
              if (section.photoResult.isEmpty) {
                _controller.animateTo(1);
              }
            }
          },
        );
      },
      builder: (context, state) {
        return LoadingOverlay(
          progressIndicator: Container(),
          color: Colors.black,
          isLoading: state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text('Section ${section.count}'),
              bottom: TabBar(
                indicatorColor: Colors.black,
                controller: _controller,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[
                  Tab(
                      text: 'Result',
                      icon: FaIcon(FontAwesomeIcons.cannabis,
                          color: Colors.green)),
                  Tab(
                      text: 'Update',
                      icon: FaIcon(FontAwesomeIcons.cameraRetro)),
                ],
              ),
            ),
            body: TabBarView(
              controller: _controller,
              children: <Widget>[
                SectionResult(onRetry: fetchSectionDetail),
                SectionUpdate(),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> fetchSectionDetail() async {
    final sectionId = (ModalRoute.of(context).settings.arguments as Section).id;
    context.bloc<SectionDetailBloc>().add(SectionDetailEvent.fetch(sectionId));
  }

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (initial) {
      fetchSectionDetail();
    }
    super.didChangeDependencies();
  }
}
