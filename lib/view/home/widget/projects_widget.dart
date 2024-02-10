import 'package:flutter/material.dart';
import 'package:flutter_cv/config/launch/app_luncher.dart';
import 'package:flutter_cv/config/setting/cv_data.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';
import 'package:flutter_cv/shared/icon/build_icon.dart';
import 'package:flutter_cv/shared/shape/gray_shape.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsWidget extends StatelessWidget {
  final bool isSmall;
  const ProjectsWidget({super.key, required this.isSmall});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.projects.title, style: bodyLarge(context)),
        const SizedBox(height: 10),
        StaggeredGrid.count(
          crossAxisCount: isSmall ? 1 : 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          children: [
            // for (int i = 0; i < myData.projects.items.length; i++)
            ...List.generate(
              myData.projects.items.length,
              (i) => Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xffF3F4F6),
                    width: 0.6,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          AppLaunch.openLink(myData.projects.items[i].link);
                        },
                        child: Text(
                          myData.projects.items[i].name,
                          style: bodySmall(context),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        myData.projects.items[i].description,
                        style: labelLarge(context),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Wrap(
                          children: [
                            ...List.generate(
                              myData.projects.items[i].badgets.length,
                              (index) {
                                return BuildBadget(
                                  text: myData.projects.items[i].badgets[index],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          BuildIcon(
                            icon: FontAwesomeIcons.googlePlay,
                            url: myData.projects.items[i].googlePlay,
                          ),
                          BuildIcon(
                            icon: FontAwesomeIcons.appStore,
                            url: myData.projects.items[i].appStore,
                          ),
                          BuildIcon(
                            icon: FontAwesomeIcons.windows,
                            url: myData.projects.items[i].windows,
                          ),
                          BuildIcon(
                            icon: FontAwesomeIcons.link,
                            url: myData.projects.items[i].link,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
