import 'package:flutter/material.dart';
import 'package:flutter_cv/config/setting/cv_data.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key, required this.isSmall});

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.education.title, style: bodyLarge(context)),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myData.education.items.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            var item = myData.education.items[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          item.universityName,
                          style: bodySmall(context),
                        ),
                      ),
                      isSmall
                          ? const SizedBox()
                          : Text(
                              '${item.start} - ${item.end}',
                              style: bodyMedium(context),
                            ),
                    ],
                  ),
                  !isSmall
                      ? const SizedBox()
                      : Text(
                          '${item.start} - ${item.end}',
                          style: bodyMedium(context),
                        ),
                  const SizedBox(height: 5),
                  Text(
                    item.specialization,
                    style: bodyMedium(context),
                  ),
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
