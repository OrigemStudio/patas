import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.24,
        child: SvgPicture.asset(
          'assets/logo.svg',
        ),
      ),
    );
  }
}
