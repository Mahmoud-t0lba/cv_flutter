import 'package:flutter/material.dart';
import 'package:flutter_cv/config/setting/cv_data.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(myData.skills.title, style: bodyLarge(context)),
        ),
        Wrap(
          children: [
            ...List.generate(
              myData.skills.items.length,
              (index) {
                var skill = myData.skills.items[index];
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 55, 54, 54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        skill,
                        style: displayMedium(context),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
