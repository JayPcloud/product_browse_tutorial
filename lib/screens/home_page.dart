import 'package:flutter/material.dart';
import 'package:product_listing/custom_widgets/custom_button.dart';
import 'package:product_listing/models/product_model.dart';
import 'package:product_listing/screens/product_details_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final productList = [
    Product(
    name: 'Wrist Watch', 
    price: 20, 
    rating: 4.3, 
    imageUrl: 'https://www.bing.com/th/id/OIP.jIN9VsbXO54Tt6c6RWkUSgHaLH?w=160&h=211&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
    ),
    Product(
    name: 'Perfume', 
    price: 12, 
    rating: 4.0, 
    imageUrl: 'https://tse1.explicit.bing.net/th/id/OIP.ZMNS-QC4UgZoR9XFIsrIigHaK-?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
   Product(
    name: 'Perfume', 
    price: 4, 
    rating: 3.2, 
    imageUrl: 'https://th.bing.com/th/id/OIP.9vqMlva__e5Q--A8zys0KwHaLH?w=131&h=195&c=7&r=0&o=7&pid=1.7&rm=3',
    ),
    Product(
    name: 'Body Cream', 
    price: 13, 
    rating: 4.5, 
    imageUrl: 'https://th.bing.com/th?q=Facial+Cream+Product&w=120&h=120&c=1&rs=1&qlt=70&o=7&cb=1&pid=InlineBlock&rm=3&mkt=en-WW&cc=NG&setlang=en&adlt=moderate&t=1&mw=247',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomMaterialButton(icon: Icons.category_outlined),
        ),
        title: Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),

      body: GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemBuilder: (context, index) {

          final product = productList[index];
          
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
                  onPressed: (){},
                  icon: Icon(Icons.favorite, size: 15, color: Colors.black,),
                  ),
               ),
            ],
          );
        },
        ),
    );
  }
}
