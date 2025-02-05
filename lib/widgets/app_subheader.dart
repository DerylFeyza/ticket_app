import 'package:flutter/material.dart';
import 'package:ticket_app/res/styles/app_styles.dart';

class AppSubheader extends StatelessWidget {
  const AppSubheader(
      {super.key,
      required this.subheader,
      required this.linkText,
      required this.linkTo});
  final String subheader;
  final String linkTo;
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
          onTap: () => Navigator.pushNamed(context, linkTo),
          child: Text(
            linkText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
