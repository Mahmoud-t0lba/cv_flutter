import 'package:flutter/material.dart';
import 'package:flutter_cv/config/launch/app_luncher.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';
import 'package:flutter_cv/shared/icon_text/build_icon_text.dart';

import '../../../config/setting/cv_data.dart';
import 'user_image.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(myData.header.name, style: bodyLarge(context)),
                const SizedBox(height: 15),
                Text(myData.header.jobTitle, style: bodyLarge(context)),
              ],
            ),
            const CvImageWidget(),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myData.header.bio.isEmpty
                ? const SizedBox()
                : Text(myData.header.bio, style: bodyMedium(context)),
            const SizedBox(height: 5),
            BuildIconText(
              icon: Icons.language_outlined,
              onTap: () {
                AppLaunch.openLink(
                  'https://www.google.com/maps/search/?api=1&query=${myData.header.location.lat},${myData.header.location.long}',
                );
              },
              text: myData.header.location.address,
            ),
            const SizedBox(height: 5),
            BuildIconText(
              icon: Icons.phone,
              onTap: () {
                AppLaunch.openLink(
                  'tel:${myData.header.phone.code}${myData.header.phone.number}',
                );
              },
              text: '${myData.header.phone.code} ${myData.header.phone.number}',
            ),
            const SizedBox(height: 5),
            BuildIconText(
              icon: Icons.mail_outline,
              onTap: () {
                AppLaunch.openLink('mailto:${myData.header.email}');
              },
              text: myData.header.email,
            ),
          ],
        ),
        const SizedBox(height: 10),
        //* links
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: myData.header.links.length,
            itemBuilder: (context, index) {
              var link = myData.header.links[index];
              return InkWell(
                onTap: () {
                  AppLaunch.openLink(link.url);
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(link.icon, size: 15),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
