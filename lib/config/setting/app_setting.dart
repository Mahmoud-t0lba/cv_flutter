class AppSetting {
  AppSetting._();
  static const String appName = 'Mahmoud Tolba CV';
  static const String fontFamliy = 'Inter';
}

class AppConstant {
  AppConstant._();
  static const String avatar = 'assets/image/avater.jpg';
  static const String phoneKey = '+20';
  static const String phone = '1097107762';
  static const String email = 'mahmoudt0lba0111@gmail.com';
  static const String name = 'Mahmoud Tolba';
  static const String jobTitle = 'Mobile App Developer';
  static const String bio = '';
  static const String github =
      'https://github.com/Mahmoud-t0lba?tab=repositories';
  static const String linkedin = 'https://www.linkedin.com/in/mahmoud-t0lba/';
  static const String aboutMe =
      'Mid level Flutter Developer with +3 years of experience in developing and delivering high-quality mobile applications. Expertise in leveraging Flutter framework to build cross-platform applications for iOS and Android. Strong understanding of mobile UI/UX principles, software development lifecycle, and agile methodologies. Proven track record of leading teams, collaborating with stakeholders, and delivering successful projects on time';

  static List<String> skills = [
    'Flutter',
    'Bloc',
    'Provider',
    'GetX',
    'API',
    'Firebase',
    'Git',
    'GitHub',
    'Animation',
    'Google Maps',
    'sqflite',
    'Get Storage',
    'Shared Pref',
    'hive',
    'BLoC pattern',
    'SOLID Principles',
    'MVC',
    'MVVM',
    'Flutter Web',
    'Clean Architecture',
    'SwiftUi',
    'background on Ios',
    'Pusher',
    'Socket.io',
    // 'Unit Test - not advanced',
  ]..removeWhere((String value) => value == '');
}
