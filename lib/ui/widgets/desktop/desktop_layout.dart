import 'dart:developer';

import 'package:dashboard_ui/ui/widgets/desktop/desktop_scroll_widget.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part1/drawer/custom_drawer.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        horizintalSpace(12),
        DesktopScrollWidget()
      ],
    );
  }
}
