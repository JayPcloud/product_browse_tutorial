import 'package:flutter/material.dart';
import 'package:product_listing/models/product_model.dart';

import '../product_details_page.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key, required this.productList});

  final List<Product> productList;

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: widget.productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final product = widget.productList[index];
          return Stack(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductDetailsPage(product: product),)
                  );
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Image.network(product.imageUrl, )),
                        SizedBox(height: 15,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(product.name, style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w600),)),
                        Row(
                          children: [
                            Text('\$${product.price}', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),),
                            Spacer(),
                            Icon(Icons.star, color: Colors.yellow, size: 12,),
                            Text('${product.rating}', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
               Align(
                alignment: Alignment.topRight,
                 child: IconButton(
                  onPressed: (){
                    print('object');
                    product.isLiked = !product.isLiked;
                    setState(() {});
                  },
                  icon: Icon(
                    product.isLiked == true?
                    Icons.favorite:
                    Icons.favorite_outline, 
                    size: 15, 
                    color: Colors.black,
                  ),
                  ),
               ),
            ],
          );
        }
      );
  }
}