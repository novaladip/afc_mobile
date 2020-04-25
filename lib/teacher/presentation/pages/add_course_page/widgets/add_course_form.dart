import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class AddCourseForm extends StatefulWidget {
  @override
  _AddCourseFormState createState() => _AddCourseFormState();
}

class _AddCourseFormState extends State<AddCourseForm> {
  AddCourseBloc addCourseBloc;
  final form = GlobalKey<FormState>();
  final dateTextInput = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCourseBloc, AddCourseState>(
      listener: (context, state) {
        state.status.maybeWhen(
          orElse: () {},
          success: (c) => Navigator.of(context).pop(),
          failure: () {
            Scaffold.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(
                backgroundColor: Colors.red,
                content: Text('Failed to create course'),
              ));
          },
        );
      },
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: form,
            child: Column(
              children: <Widget>[
                TextInput(
                  labelText: 'Course Name',
                  color: Colors.black,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) =>
                      addCourseBloc.add(AddCourseEvent.changeName(value)),
                  validator: (value) =>
                      InputValidator.required(value, 'Course Name'),
                ),
                GestureDetector(
                  onTap: _showDatePicker,
                  child: AbsorbPointer(
                    absorbing: true,
                    child: TextInput(
                      labelText: 'Close Date',
                      color: Colors.black,
                      controller: dateTextInput,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                MainButton(
                  text: 'Submit',
                  outline: false,
                  color: Colors.black,
                  onPressed: onSubmit,
                  loading: state.status.maybeWhen(
                    orElse: () => false,
                    submitting: () => true,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void onSubmit() {
    final isValid = form.currentState.validate();
    if (!isValid) {
      return;
    }

    addCourseBloc.add(AddCourseEvent.submit());
  }

  void _showDatePicker() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.parse(dateTextInput.text),
      firstDate: DateTime.now().subtract(Duration(days: 1)),
      lastDate: DateTime.now().add(Duration(days: 31)),
    );

    if (date == null) {
      return;
    }

    final formattedDate = DateFormat('yyyy-MM-dd').format(date);
    addCourseBloc.add(AddCourseEvent.changeCloseDate(formattedDate));
    dateTextInput.text = formattedDate;
  }

  @override
  void initState() {
    if (addCourseBloc == null) {
      addCourseBloc = context.bloc<AddCourseBloc>();
    }
    super.initState();
  }
}
