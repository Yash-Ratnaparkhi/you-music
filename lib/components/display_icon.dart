import 'package:flutter/material.dart';

class DisplayIcon extends StatelessWidget {
  const DisplayIcon({
    Key? key,
    required this.icon,
    required this.color,
    this.size = 30,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
