import 'package:flutter/material.dart';

class CustomClip extends CustomClipper<Rect> {
  @override
  // ignore: override_on_non_overriding_member
  Rect getClip(Size size) {
  return Rect.fromLTWH(0, 0, size.width, size.height - 60);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
