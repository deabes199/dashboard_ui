import 'package:dashboard_ui/uitils/helper/size_config.dart';
import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});
  final WidgetBuilder mobile, tablet, desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrians) {
      if (constrians.maxWidth < SizeConfig.tablet) {//800
        return mobile(context);//600
      } else if (constrians.maxWidth < SizeConfig.desktop) {//1200
        return tablet(context); //800
      } else {
        return desktop(context);//1200
      }
    });
  }
}
