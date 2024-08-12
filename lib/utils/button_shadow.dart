import 'package:flutter/material.dart';

BoxDecoration activeShadow() {
  return BoxDecoration(
    color: const Color(0xFF323B4F),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF252B39).withOpacity(1),
        spreadRadius: 0,
        blurRadius: 10,
        offset: const Offset(
          4,
          4,
        ),
      ),
      BoxShadow(
        color: const Color(0xFF38445A).withOpacity(1),
        spreadRadius: 0,
        blurRadius: 10,
        offset: const Offset(-4, -4),
      )
    ],
  );
}

BoxDecoration inActiveShadow() {
  return BoxDecoration(
    color: const Color(0xFF28303F),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF364055).withOpacity(1),
        spreadRadius: 0,
        blurRadius: 8,
        offset: const Offset(
          4,
          4,
        ),
      ),
      BoxShadow(
        color: const Color(0xFF202633).withOpacity(1),
        spreadRadius: 0,
        blurRadius: 8,
        offset: const Offset(4, 4),
      )
    ],
  );
}
