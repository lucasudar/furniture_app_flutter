import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/screens/details/components/product_info.dart';

import '../../../models/Product.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ProductInfo(product: product)],
      ),
    );
  }
}
