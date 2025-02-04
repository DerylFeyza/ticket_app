import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  const AppLayoutBuilder({super.key, required this.divider, this.width = 3});
  final int divider;
  final double width;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              (constraints.constrainWidth() / divider).floor(),
              (index) => SizedBox(
                    height: 1,
                    width: width,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color: Colors.white,
                    )),
                  )));
    });
  }
}
