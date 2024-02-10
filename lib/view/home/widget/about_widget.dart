import 'package:flutter/material.dart';
import 'package:flutter_cv/config/setting/cv_data.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.about.title, style: bodyLarge(context)),
        const SizedBox(height: 10),
        Text(
          myData.about.body,
          style: bodyMedium(context),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
