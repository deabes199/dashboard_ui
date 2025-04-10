import 'package:dashboard_ui/ui/widgets/custom_layout_builder.dart';
import 'package:dashboard_ui/ui/widgets/desktop/desktop_layout.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part1/drawer/custom_drawer.dart';
import 'package:dashboard_ui/ui/widgets/mobile/mobile_layout.dart';
import 'package:dashboard_ui/ui/widgets/tablet/tablet_layout.dart';
import 'package:dashboard_ui/uitils/helper/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet //mean mobile
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xfff7f9fa),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomLayoutBuilder(
          mobile: (context) => MobileLayout(),
          tablet: (context) => TabletLayout(),
          desktop: (context) => DesktopLayout(),
        ),
      ),
    );
  }
}
