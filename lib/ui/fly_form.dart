import 'package:Crane/ui/header_form.dart';
import 'package:flutter/material.dart';

class FlyForm extends StatefulWidget {
  @override
  _FlyFormState createState() => _FlyFormState();
}

class _FlyFormState extends State<FlyForm> {
  final travelerController = TextEditingController();
  final countryDestinationController = TextEditingController();
  final destinationController = TextEditingController();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(
      fields: <HeaderFormField>[
        HeaderFormField(
          icondata: Icons.person,
          textEditingController: travelerController,
          title: 'Travelers',
        ),
        HeaderFormField(
          icondata: Icons.place,
          textEditingController: countryDestinationController,
          title: 'Select Origin',
        ),
        HeaderFormField(
          icondata: Icons.airplanemode_active,
          textEditingController: destinationController,
          title: 'Choose Destination',
        ),
        HeaderFormField(
          icondata: Icons.date_range,
          textEditingController: dateController,
          title: 'Select Dates',
        ),
      ],
    );
  }
}
