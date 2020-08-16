import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'section_card.dart';
import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class SectionContainer extends StatelessWidget {
  final List<Section> sections;

  const SectionContainer({
    Key key,
    this.sections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Daftar Pertemuan',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CreateSectionButton(sectionLength: sections.length),
            ],
          ),
        ),
        Expanded(
          child: sections.isEmpty
              ? EmptyScreen(
                  message: "Belum ada data pertemuan!",
                )
              : ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: sections.length,
                  itemBuilder: (context, index) =>
                      SectionCard(section: sections[index]),
                ),
        ),
      ],
    );
  }
}

class CreateSectionButton extends StatelessWidget {
  final int sectionLength;

  const CreateSectionButton({
    Key key,
    this.sectionLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateSectionBloc, CreateSectionState>(
      listener: (context, state) {
        state.maybeWhen(
          failure: () {
            _showSnackbar(
              context,
              title: 'Gagal membuat pertemuan',
              color: Colors.red,
            );
          },
          success: (count) {
            _showSnackbar(
              context,
              title: 'Pertemuan $count berhasil dibuat',
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        const shape = RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        );
        final isLoading = state.maybeWhen(
          orElse: () => false,
          loading: () => true,
        );

        return OutlineButton(
          shape: shape,
          borderSide: BorderSide(color: Colors.purple, width: 2),
          onPressed: () => !isLoading ? onSubmit(context) : null,
          child: isLoading
              ? SpinKitDoubleBounce(color: Colors.blueAccent, size: 24)
              : Text('Buat Pertemuan'),
        );
      },
    );
  }

  void _showSnackbar(
    BuildContext context, {
    Color color = Colors.green,
    @required String title,
  }) {
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: color,
          content: Text(title),
        ),
      );
  }

  void onSubmit(BuildContext context) {
    context.bloc<CreateSectionBloc>().add(
          CreateSectionButtonPressed(
            count: sectionLength + 1,
            courseId: (ModalRoute.of(context).settings.arguments as Course).id,
          ),
        );
  }
}
