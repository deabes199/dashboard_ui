import 'package:dashboard_ui/ui/widgets/desktop/part3/card/card_page_view.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/card/dots_indicator.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class PageViewCardAndDots extends StatefulWidget {
  const PageViewCardAndDots({super.key});

  @override
  State<PageViewCardAndDots> createState() => _PageViewCardAndDotsState();
}

class _PageViewCardAndDotsState extends State<PageViewCardAndDots> {
  late PageController pageController;
  int selectedIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      selectedIndex = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' My Card',
          style: AppStyles.styleRegular16(context),
        ),
        verticalSpace(8),
        CardPageView(
          controller: pageController,
        ),
        verticalSpace(10),
        DotsIndicator(
          currntIndex: selectedIndex,
        )
      ],
    );
  }
}

