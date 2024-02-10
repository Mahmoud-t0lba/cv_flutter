import 'package:flutter/material.dart';
import 'package:flutter_cv/config/theme/app_theme.dart';

class BuildBadget extends StatelessWidget {
  const BuildBadget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return text.isEmpty
        ? const SizedBox()
        : Card(
            color: const Color(0xffF8F8FA),
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Text(
                text,
                style: displaySmall(context),
              ),
            ),
          );
  }
}
