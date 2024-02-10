import 'package:flutter/material.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';

class BuildIconText extends StatelessWidget {
  const BuildIconText({
    super.key,
    required this.icon,
    required this.onTap,
    required this.text,
  });

  final String text;
  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 15),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              text,
              style: bodyMedium(context),
            ),
          ),
        ],
      ),
    );
  }
}
