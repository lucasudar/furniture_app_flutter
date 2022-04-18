import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/screens/components/categories.dart';
import 'package:furniture_app_flutter/screens/components/recommend_products.dart';
import 'package:furniture_app_flutter/services/fetchProducts.dart';
import '../../components/title_text.dart';
import '../../services/fetchCategories.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
        child: SafeArea(
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
            const Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleText(title: 'Recommended for you'),
            ),
            FutureBuilder<Iterable>(
                future: fetchProducts(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? RecommendProducts(
                          products: List.from(snapshot.data!),
                        )
                      : Center(child: Image.asset('assets/ripple.gif'));
                }),
          ]),
        ));
  }
}
