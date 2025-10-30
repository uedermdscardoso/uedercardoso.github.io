import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  
  const CustomDot({ super.key, required this.isClicked, required this.onTap });

  final bool isClicked;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {

    return Visibility(
      visible: isClicked,
      replacement: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.transparent,
                  width: 2,
                ),
              ),
            ),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromRGBO(61, 61, 61, 1),
              ),
            ),
          ],
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: const Color.fromRGBO(61, 61, 61, 1),
                width: 2,
              ),
            ),
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}