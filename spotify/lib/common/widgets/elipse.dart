import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Elipse extends StatelessWidget {
  void Function()? onTap;
  final Color color;
  final String icon;
  Elipse({super.key, required this.color, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            child: SvgPicture.asset(
              icon,fit: BoxFit.none,
            ),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
