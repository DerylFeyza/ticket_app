import 'package:flutter/material.dart';
import 'package:ticket_app/res/styles/app_styles.dart';

class AppSubheader extends StatelessWidget {
  const AppSubheader(
      {super.key, required this.subheader, required this.linkText});
  final String subheader;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          subheader,
          style: AppStyles.headlineStyle2,
        ),
        InkWell(
          child: Text(
            linkText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
