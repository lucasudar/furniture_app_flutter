import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../models/Product.dart';
import '../../size_config.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/bag.svg"),
            onPressed: () {},
          ),
          SizedBox(
            width: SizeConfig.defaultSize,
          )
        ]);
  }
}