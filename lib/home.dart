import 'package:Crane/theme/theme.dart';
import 'package:Crane/ui/backdrop.dart';
import 'package:flutter/material.dart';

class Crane extends StatefulWidget {
  @override
  _CraneState createState() => _CraneState();
}

class _CraneState extends State<Crane> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crane',
      debugShowCheckedModeBanner: false,
      home: Backdrop(
        frontLayer:,
        backLayer:,
        frontTitle:,
        backTitle:,
      ),
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      theme: kCraneTheme,
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name != '/') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (BuildContext context) => Crane(),
    fullscreenDialog: true,
  );
}