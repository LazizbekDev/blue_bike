import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoContainer extends StatelessWidget {
  InfoContainer({
    super.key,
    required this.discountOrCost,
    required this.infoText,
  });

  String infoText;
  String discountOrCost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  infoText,
                  style: TextStyle(
                      color: const Color(0xffFFFFFF).withOpacity(0.87),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  discountOrCost,
                  style: TextStyle(
                      color: const Color(0xffFFFFFF).withOpacity(0.6)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
