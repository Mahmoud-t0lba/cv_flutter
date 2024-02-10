import 'package:flutter/material.dart';
import 'package:flutter_cv/config/setting/app_setting.dart';

class CvImageWidget extends StatelessWidget {
  const CvImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage(AppConstant.avatar),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
