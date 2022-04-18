import 'package:flutter/material.dart';
import '../../components/title_text.dart';
import '../../models/Categories.dart';
import '../../size_config.dart';
import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(defaultSize * 2),
        child: const TitleText(title: 'Browse by Category'),
      ),
      CategoryCard(category: category)
    ]));
  }
}

