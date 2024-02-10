import 'package:flutter_cv/config/data/about.dart';
import 'package:flutter_cv/config/data/data.dart';
import 'package:flutter_cv/config/data/education.dart';
import 'package:flutter_cv/config/data/header.dart';
import 'package:flutter_cv/config/data/projects.dart';
import 'package:flutter_cv/config/data/skills.dart';
import 'package:flutter_cv/config/data/work_experience.dart';
import 'package:flutter_cv/config/setting/app_setting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

MyData myData = MyData(
  header: Header(
    name: AppConstant.name,
    jobTitle: AppConstant.jobTitle,
    bio: AppConstant.bio,
    location: Location(address: 'Egypt', lat: '31.03637', long: '31.380691'),
    phone: Phone(code: AppConstant.phoneKey, number: AppConstant.phone),
    email: AppConstant.email,
    links: [
      Links(AppConstant.github, icon: FontAwesomeIcons.github),
      Links(AppConstant.linkedin, icon: FontAwesomeIcons.linkedin),
    ],
  ),
  education: Education(
    title: 'Education',
    items: [
      Item(
        universityName: 'Faculty of Computer Science - Mansoura University',
        specialization: 'Bachelor degree of Computer science - IS department',
        start: '2018',
        end: '2022',
      ),
    ],
  ),
  skills: Skills(
    title: 'Skills',
    items: AppConstant.skills,
  ),
  about: About(title: 'About', body: AppConstant.aboutMe),
  workExperience: WorkExperience(
    title: 'Work Experience',
    works: works,
  ),
  projects: Projects(
    title: 'Projects',
    items: [
      ProjectItem(
        name: 'Zone',
        description: 'Zone is more than just an .',
        link: 'https://zone.ecmpp.com/',
        googlePlay:
            'https://play.google.com/store/apps/details?id=com.ecmpp.zone.app',
        appStore: 'https://apps.apple.com/us/app/zone-office/id6446050733',
        badgets: [
          'Flutter',
          'Firebase',
          'Google Drive',
          'API',
          'Agora',
        ],
        macOS: '',
        windows: '',
      ),
    ],
  ),
);

List<Works> works = [
  Works(
    companyName: 'Moltaqa',
    country: 'Mansoura',
    type: 'Full time',
    jobTitle: 'Mobile Developer',
    start: '1/2024',
    end: 'now',
  ),
  Works(
    companyName: 'Almasader Alraqmia',
    country: 'Mansoura',
    type: 'Full time',
    jobTitle: 'Flutter Developer',
    start: '9/2023',
    end: '1/2024',
  ),
  Works(
    companyName: 'Metafortech',
    country: 'Jordan',
    type: 'Part time (remotely)',
    jobTitle: 'Flutter Developer',
    start: '11/2022',
    end: '8/2023',
  ),
  Works(
    companyName: 'Spider te-8',
    country: 'Mansoura',
    type: 'Full time',
    jobTitle: 'Flutter Developer',
    start: '6/2022',
    end: '10/2022',
  ),
  Works(
    companyName: 'IX Solutions',
    country: 'Mansoura',
    type: 'Full time',
    jobTitle: 'Flutter Developer',
    start: '10/2021',
    end: '3/2022',
  ),
  Works(
    companyName: 'Tatbeqakum',
    country: 'Saudi Arabia',
    type: 'Part time (remotely)',
    jobTitle: 'Flutter Developer',
    start: '3/2021',
    end: '5/2022',
  ),
  Works(
    companyName: 'Freelancer',
    country: '',
    type: 'Freelancer',
    jobTitle: 'Mobile App Developer',
    start: '2021',
    end: 'now',
  ),
];
