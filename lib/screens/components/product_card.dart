import 'package:flutter/material.dart';
import '../../components/title_text.dart';
import '../../constants.dart';
import '../../models/Product.dart';
import '../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return GestureDetector(
      onTap: press,
      child: Container(
          width: defaultSize * 14.5,
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
          child: AspectRatio(
            aspectRatio: 0.693,
            child: Column(
              children: <Widget>[
                AspectRatio(
                    aspectRatio: 1,
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/spinner.gif",
                      image: product.image,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultSize),
                  child: TitleText(title: product.title),
                ),
                SizedBox(height: defaultSize / 2),
                Text('\$${product.price}'),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}