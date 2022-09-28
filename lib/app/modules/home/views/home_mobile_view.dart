import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:metastudio_page/app/widgets/body_app/background_color.dart';
import 'package:metastudio_page/app/widgets/body_app/body_content.dart';
import 'package:metastudio_page/app/widgets/body_app/body_widget.dart';
import 'package:metastudio_page/app/widgets/body_app/button_app.dart';
import 'package:metastudio_page/app/widgets/body_app/footer.dart';
import 'package:metastudio_page/app/widgets/body_app/head_text.dart';
import 'package:metastudio_page/app/widgets/body_app/title_text.dart';
import 'package:metastudio_page/app/widgets/drawer_app/drawer_widget.dart';
import 'package:metastudio_page/app/widgets/header/phone_app_bar.dart';
import 'package:metastudio_page/app/widgets/responsive/width_height.dart';

class HomeMobileView extends GetView {
  const HomeMobileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(fontSize: 21.0),
      body: BodyWidget(
        children: <Widget>[
          const BackgroundColor(),
          const PhoneAppBar(titleAppBar: 'Mobile App'),
          BodyContent(
            widthMargin: 60.0,
            heightMargin: 180.0,
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  children: <Widget>[
                    const Center(child: HeadText(size: 40.0)),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          SizedBox(height: 7.0),
                          TitleText(sizeBox: 398.0, sizeText: 16.0),
                          SizedBox(height: 25.0),
                          ButtonApp(
                            height: 40.0,
                            sizeTitle: 16.0,
                            width: 150.0,
                          ),
                          SizedBox(height: 34.0),
                          Footer(
                            firstIconSize: 52.0,
                            sizeTitle: 16.0,
                            secondIconSize: 48.0,
                            heightBox: 8.5,
                            spaceBetween: 120.0,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/base.png',
                      height: getHieght(context) / 3.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
