import 'package:flutter/material.dart';
import 'package:ticket_app/res/styles/app_styles.dart';

class TextBubble extends StatelessWidget {
  final IconData icon;
  final String text;
  const TextBubble({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.brandWhite,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyles.brandGray,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppStyles.textStyle,
          )
        ],
      ),
    );
  }
}
