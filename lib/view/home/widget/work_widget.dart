import 'package:flutter/material.dart';
import 'package:flutter_cv/config/setting/cv_data.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';
import 'package:flutter_cv/shared/shape/gray_shape.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key, required this.isSmall});

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.workExperience.title, style: bodyLarge(context)),
        const SizedBox(height: 5),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myData.workExperience.works.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            var work = myData.workExperience.works[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            InkWell(
                              // onTap: () {
                              //   AppLaunch.openLink(work.companySite);
                              // },
                              child: Text(
                                work.companyName,
                                style: bodySmall(context),
                              ),
                            ),
                            const SizedBox(width: 5),
                            BuildBadget(text: work.country),
                            BuildBadget(text: work.type),
                          ],
                        ),
                      ),
                      isSmall
                          ? const SizedBox()
                          : Text(
                              '${work.start}- ${work.end}',
                              style: bodyMedium(context),
                            ),
                    ],
                  ),
                  isSmall
                      ? Text(
                          '${work.start}- ${work.end}',
                          style: bodyMedium(context),
                        )
                      : const SizedBox(),
                  const SizedBox(height: 2),
                  Text(work.jobTitle, style: displayLarge(context)),
                  // const SizedBox(height: 2),
                  // Text(work.description, style: bodyMedium(context)),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
