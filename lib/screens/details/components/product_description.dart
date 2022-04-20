import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        left: defaultSize * 2,
        right: defaultSize * 2,
        top: defaultSize * 9,
      ),
      // height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.2),
          topRight: Radius.circular(defaultSize * 1.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle,
            style: TextStyle(
                fontSize: defaultSize * 1.8, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: defaultSize * 3),
          Text(
            product.description,
            style: TextStyle(color: kTextColor.withOpacity(0.7), height: 1.7),
          ),
          SizedBox(height: defaultSize * 3),
          SizedBox(
            width: double.infinity,
            child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.all(defaultSize * 1.5),
                  ),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(kPrimaryColor),
                ),
                onPressed: press,
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: defaultSize * 1.6,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
