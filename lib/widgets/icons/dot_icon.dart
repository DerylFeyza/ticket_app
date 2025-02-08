import 'package:flutter/material.dart';

class DotIcon extends StatelessWidget {
  final Color color;
  const DotIcon({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 2.5),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
