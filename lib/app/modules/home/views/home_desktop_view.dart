import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:metastudio_page/app/widgets/body_app/background_color.dart';
import 'package:metastudio_page/app/widgets/body_app/body_content.dart';
import 'package:metastudio_page/app/widgets/body_app/body_widget.dart';
import 'package:metastudio_page/app/widgets/body_app/button_app.dart';
import 'package:metastudio_page/app/widgets/body_app/footer.dart';
import 'package:metastudio_page/app/widgets/body_app/head_text.dart';
import 'package:metastudio_page/app/widgets/body_app/title_text.dart';
import 'package:metastudio_page/app/widgets/header/nav_bar.dart';

class HomeDesktopView extends GetView {
  const HomeDesktopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(
        children: <Widget>[
          const BackgroundColor(),
          BodyContent(
            widthMargin: 184.0,
            heightMargin: 196.0,
            children: <Widget>[
              const NavBar(),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 80.0,
                    left: 100.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: ListView(
                          children: <Widget>[
                            const HeadText(size: 90.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                SizedBox(height: 16.0),
                                TitleText(sizeBox: 498.0, sizeText: 19.0),
                                SizedBox(height: 25.0),
                                ButtonApp(
                                  height: 50.0,
                                  sizeTitle: 25.0,
                                  width: 200.0,
                                ),
                                SizedBox(height: 34.0),
                                Footer(
                                  firstIconSize: 82.0,
                                  sizeTitle: 19.0,
                                  secondIconSize: 78.0,
                                  heightBox: 14.5,
                                  spaceBetween: 250.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/base.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
