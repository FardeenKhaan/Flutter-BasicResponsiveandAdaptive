import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Screens extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;
  const Screens(
      {required this.desktop,
      required this.mobile,
      required this.tab,
      super.key});

  static isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 767;
  }

  static isTab(BuildContext context) {
    return MediaQuery.of(context).size.width >= 767 &&
        MediaQuery.of(context).size.width < 1024;
  }

  static isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024) {
          return desktop;
        } else if (constraints.maxWidth < 1024 && constraints.maxWidth >= 767) {
          return tab;
        } else {
          return mobile;
        }
      },
    );
  }
}
