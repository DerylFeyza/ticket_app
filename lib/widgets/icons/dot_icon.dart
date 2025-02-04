import 'package:flutter/material.dart';

class DotIcon extends StatelessWidget {
  const DotIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.5),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
