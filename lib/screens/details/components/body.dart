import 'package:flutter/material.dart';
import 'package:furniture_app_flutter/constants.dart';
import 'package:furniture_app_flutter/screens/details/components/product_description.dart';
import 'package:furniture_app_flutter/screens/details/components/product_info.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductInfo(product: product),
          ProductDescription(
            product: product,
            press: () {},
          ),
        ],
      ),
    );
  }
}

