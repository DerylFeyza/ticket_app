import 'package:flutter/material.dart';
import 'package:ticket_app/res/styles/app_styles.dart';

class TextStyleTicket extends StatelessWidget {
  final String text;
  final TextAlign align;
  final TextStyle? textStyle;
  final Color color;

  const TextStyleTicket(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.textStyle,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    final style =
        textStyle ?? AppStyles.headlineStyle4.copyWith(color: Colors.white);
    return Text(
      text,
      textAlign: align,
      style: style.copyWith(color: color),
    );
  }
}
