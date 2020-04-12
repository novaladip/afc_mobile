import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/features/teacher/section/section.dart';
import 'package:afc_mobile/features/teacher/section/ui/section_form_photo.dart';
import 'package:afc_mobile/features/teacher/section/ui/attendance_list_form.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';

class SectionPage extends StatefulWidget {
  static const routeName = '/section';

  @override
  _SectionPageState createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  bool isInitial = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionBloc, SectionState>(
      builder: (context, state) {
        if (state is SectionFailure) {
          //
        }

        if (state is SectionLoaded) {
          return buildScaffold(
            state: state,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    state.section.course.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  SectionFormPhoto(),
                  SizedBox(height: 10),
                  AttedanceListForm(attendances: state.section.attendances),
                ],
              ),
            ),
          );
        }

        return Loading();
      },
    );
  }

  Scaffold buildScaffold({
    @required SectionLoaded state,
    @required Widget child,
  }) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Section ${state.section.count}'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              'SAVE',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: child,
    );
  }

  @override
  void didChangeDependencies() {
    if (isInitial) {
      init();
      isInitial = false;
    }
    super.didChangeDependencies();
  }

  void init() {
    final String sectionId = ModalRoute.of(context).settings.arguments;
    BlocProvider.of<SectionBloc>(context).add(FetchSectionDetail(sectionId));
  }
}
