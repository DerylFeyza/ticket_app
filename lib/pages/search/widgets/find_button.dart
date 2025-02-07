import 'package:flutter/material.dart';
import 'package:ticket_app/res/styles/app_styles.dart';

class FindButton extends StatelessWidget {
  const FindButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xD91130CE),
      ),
      child: Center(
        child: Text(
          "Find Tickets",
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
