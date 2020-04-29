import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:afc_mobile/section/section.dart';
import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class RecognizeForm extends StatefulWidget {
  @override
  _RecognizeFormState createState() => _RecognizeFormState();
}

class _RecognizeFormState extends State<RecognizeForm> {
  bool isSuccess = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecognizeFormBloc, RecognizeFormState>(
      listener: (context, state) {
        state.status.maybeWhen(
            orElse: () {},
            submitting: () {
              isSuccess = false;
            },
            failure: () {
              showBasicSnackBar(
                context,
                title: "Oops something went wrong, please try again.",
                color: Colors.red,
              );
            },
            success: (result) {
              if (!isSuccess) {
                isSuccess = true;
                showBasicSnackBar(
                  context,
                  title:
                      'We found ${result.facesFound} founds & ${result.knownFaces} known faces',
                );
              }
            });
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            if (state.result != null)
              CachedNetworkImage(
                imageUrl: state.result.photo,
                height: 175,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            BaseContainer(
              child: Column(
                children: <Widget>[
                  TextInputPhoto(
                    value: state.photoPath,
                    onChange: (photoPath) => context
                        .bloc<RecognizeFormBloc>()
                        .add(RecognizeFormEvent.photoChange(photoPath)),
                  ),
                  SizedBox(height: 10),
                  MainButton(
                    loading: state.status.maybeWhen(
                      orElse: () => false,
                      submitting: () => true,
                    ),
                    text: 'Submit',
                    onPressed: () {
                      final sectionId =
                          (ModalRoute.of(context).settings.arguments as Section)
                              .id;

                      context
                          .bloc<RecognizeFormBloc>()
                          .add(RecognizeFormEvent.submit(sectionId));
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
