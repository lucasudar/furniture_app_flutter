import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/screens/components/categories.dart';
import '../../components/title_text.dart';
import '../../services/fetchCategories.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(title: 'Browse by Category'),
          ),
          FutureBuilder<Iterable>(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    categories: List.from(snapshot.data!),
                  )
                : Center(child: Image.asset('assets/ripple.gif')),
          ),
        ]));
  }
}
