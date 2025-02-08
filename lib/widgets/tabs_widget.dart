import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class TabsWidget extends StatefulWidget {
  final String leftText;
  final String rightText;
  final bool initialIsLeftSelected;

  const TabsWidget({
    super.key,
    required this.leftText,
    required this.rightText,
    this.initialIsLeftSelected = true,
  });

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  late bool isLeftSelected;

  @override
  void initState() {
    super.initState();
    isLeftSelected = widget.initialIsLeftSelected;
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.brandWhite,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isLeftSelected = true;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: screen.width * 0.44,
              decoration: BoxDecoration(
                color: isLeftSelected ? Colors.white : Colors.transparent,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
              ),
              child: Center(child: Text(widget.leftText)),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isLeftSelected = false;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: screen.width * 0.44,
              decoration: BoxDecoration(
                color: isLeftSelected ? Colors.transparent : Colors.white,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(50),
                ),
              ),
              child: Center(child: Text(widget.rightText)),
            ),
          ),
        ],
      ),
    );
  }
}
