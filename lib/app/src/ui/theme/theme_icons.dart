import 'package:flutter_svg/svg.dart';

class ThemeIcons {
  String get email => 'assets/icons/email_icon.svg';
  String get password => 'assets/icons/password_icon.svg';
  String get eye => 'assets/icons/eye_icon.svg';
  String get eyeOff => 'assets/icons/eye_off_icon.svg';

  SvgPicture emailIcon() => SvgPicture.asset(email);
  SvgPicture passwordIcon() => SvgPicture.asset(password);
  SvgPicture eyeIcon() => SvgPicture.asset(eye);
  SvgPicture eyeOffIcon() => SvgPicture.asset(eyeOff);
}
