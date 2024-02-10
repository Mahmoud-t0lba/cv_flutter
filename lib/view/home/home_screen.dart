import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cv/view/home/widget/about_widget.dart';
import 'package:flutter_cv/view/home/widget/education_widget.dart';
import 'package:flutter_cv/view/home/widget/header_widget.dart';
import 'package:flutter_cv/view/home/widget/skills_widget.dart';
import 'package:flutter_cv/view/home/widget/work_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    bool isSmall = width < 900;
    return Material(
      child: Row(
        children: [
          isSmall ? const SizedBox() : buildExpanded,
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 10,
                  left: 10,
                  bottom: 30,
                ),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    scrollbars: false,
                    overscroll: false,
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: ListView(
                    children: [
                      const HeaderWidget(),
                      const AboutWidget(),
                      WorkWidget(isSmall: isSmall),
                      EducationWidget(isSmall: isSmall),
                      const SkillsWidget(),

                      /// TODO Uncomment the following code
                      // ProjectsWidget(isSmall: isSmall),
                    ],
                  ),
                ),
              ),
            ),
          ),
          isSmall ? const SizedBox() : buildExpanded,
        ],
      ),
    );
  }

  Expanded get buildExpanded {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
      ),
    );
  }
}
