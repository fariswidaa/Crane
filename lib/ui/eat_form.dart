import 'package:Crane/ui/header_form.dart';
import 'package:flutter/material.dart';

class EatForm extends StatefulWidget {
  @override
  _EatFormState createState() => _EatFormState();
}

class _EatFormState extends State<EatForm> {
  final dinerController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(
      fields: <HeaderFormField>[
        HeaderFormField(
          icondata:  Icons.person,
          title: 'Diners',
          textEditingController: dinerController,
        ),
        HeaderFormField(
          icondata: Icons.date_range,
          title: 'Select Date',
          textEditingController: dateController,
        ),
        HeaderFormField(
          icondata: Icons.access_time,
          title: 'Select Time',
          textEditingController: timeController,
        ),
        HeaderFormField(
          icondata: Icons.restaurant_menu,
          title: 'Select Location',
          textEditingController: locationController,
        ),
      ],
    );
  }
}
