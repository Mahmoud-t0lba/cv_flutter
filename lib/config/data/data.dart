import 'package:flutter_cv/config/data/education.dart';
import 'package:flutter_cv/config/data/projects.dart';
import 'package:flutter_cv/config/data/skills.dart';
import 'package:flutter_cv/config/data/work_experience.dart';

import 'about.dart';
import 'header.dart';

class MyData {
  final Header header;
  final About about;
  final WorkExperience workExperience;
  final Education education;
  final Skills skills;
  final Projects projects;
  MyData({
    required this.header,
    required this.about,
    required this.workExperience,
    required this.education,
    required this.skills,
    required this.projects,
  });
}
