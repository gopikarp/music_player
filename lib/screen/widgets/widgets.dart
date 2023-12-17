import 'package:flutter/widgets.dart';

SizedBox Hbox({double height = 20}) {
  return SizedBox(
    height: height,
  );
}

SizedBox Wbox({double width = 10}) => SizedBox(
      width: width,
    );

Text textWidget(String text) => Text(text);
