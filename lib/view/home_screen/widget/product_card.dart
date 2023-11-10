import 'package:flutter/material.dart';
import 'package:flutter_task/model/products_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductsModel? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(product?.image ??
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRBvBRB6nsDkK5cFxgPRdij9pdIx1kbL6WSA&usqp=CAU"))),
                  height: 220,
                  width: double.infinity,
                ),
                IconButton(
                    onPressed: () {
                      // provider.addtowishlist(product?.id);
                    },
                    // icon: provider.wishlistProducts == null
                    //     ? Icon(Icons.favorite_border)
                    //     : provider.wishlistProducts!.contains(product?.id)
                    //         ? Icon(
                    //             Icons.favorite,
                    //             color: Colors.red,
                    //           )
                    icon: Icon(Icons.favorite_border))
              ],
            ),
            Container(
              width: double.infinity,
              height: 25,
              child: Text(
                product?.title ?? "",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  "\$${product?.price}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "${product?.rating?.rate}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
