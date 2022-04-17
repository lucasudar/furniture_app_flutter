import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_flutter/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg',
            height: SizeConfig.defaultSize! * 2),
        onPressed: () {},
      ),
    ));
  }
}
