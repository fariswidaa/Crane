import 'package:Crane/theme/color.dart';
import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {

  final List<HeaderFormField> fields;

  const HeaderForm({Key key, this.fields}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: kCranePurple800,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
            children: fields.map((field) {
          return Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: TextField(
              controller: field.textEditingController,
              cursorColor: Theme.of(context).colorScheme.secondary,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  field.icondata,
                  color: Theme.of(context).iconTheme.color,
                  size: 24.0,
                ),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                fillColor: kCranePurple700,
                filled: true,
                labelText: field.title,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}

class HeaderFormField {
  final IconData icondata;
  final String title;
  final TextEditingController textEditingController;

  const HeaderFormField(
      {this.icondata, this.textEditingController, this.title});
}
