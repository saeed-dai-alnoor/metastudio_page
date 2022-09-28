import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:metastudio_page/app/modules/home/views/home_desktop_view.dart';
import 'package:metastudio_page/app/modules/home/views/home_mobile_view.dart';
import 'package:metastudio_page/app/modules/home/views/home_tablet_view.dart';
import 'package:metastudio_page/app/widgets/responsive/responsive_layout.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ResponsevLayout(
      mobileView: HomeMobileView(),
      tabletView: HomeTabletView(),
      desktopView: HomeDesktopView(),
    );
  }
}
