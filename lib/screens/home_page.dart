import 'package:flutter/material.dart';
import 'package:product_listing/custom_widgets/custom_button.dart';
import 'package:product_listing/models/product_model.dart';
import 'package:product_listing/screens/tab_view/home.dart';

import 'tab_view/favourites.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final productList = [
    Product(
    name: 'Wrist Watch', 
    price: 20, 
    rating: 4.3, 
    imageUrl: 'https://www.bing.com/th/id/OIP.jIN9VsbXO54Tt6c6RWkUSgHaLH?w=160&h=211&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
    isLiked: false
    ),
    Product(
    name: 'Perfume', 
    price: 12, 
    rating: 4.0, 
    imageUrl: 'https://tse1.explicit.bing.net/th/id/OIP.ZMNS-QC4UgZoR9XFIsrIigHaK-?rs=1&pid=ImgDetMain&o=7&rm=3',
    isLiked: false
    ),
   Product(
    name: 'Perfume', 
    price: 4, 
    rating: 3.2, 
    imageUrl: 'https://th.bing.com/th/id/OIP.9vqMlva__e5Q--A8zys0KwHaLH?w=131&h=195&c=7&r=0&o=7&pid=1.7&rm=3',
    isLiked: false
    ),
    Product(
    name: 'Body Cream', 
    price: 13, 
    rating: 4.5, 
    imageUrl: 'https://th.bing.com/th?q=Facial+Cream+Product&w=120&h=120&c=1&rs=1&qlt=70&o=7&cb=1&pid=InlineBlock&rm=3&mkt=en-WW&cc=NG&setlang=en&adlt=moderate&t=1&mw=247',
    isLiked: false
    ),
  ];

  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: tabIndex,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomMaterialButton(icon: Icons.category_outlined),
          ),
          title: Text(
            'Explore',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          actions: [
            CustomMaterialButton(icon: Icons.search),
            SizedBox(
              width: 5,
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: TabBar(
            tabs: [
              Column(
                children: [
                  Icon(Icons.home_outlined),
                  Text('Home')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.favorite_outline),
                  Text('Favourite')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.person_outline),
                  Text('Profile')
                ],
              ),
            ],
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            indicator: BoxDecoration(color: Colors.transparent),
            unselectedLabelColor: const Color(0xFF5C5757),
            onTap: (value) {
              tabIndex = value;
              setState(() { });
            },
            
            ),
        ),
      
          
        body: TabBarView(
          children: [
            HomeTab(productList: productList),
            FavouritesTab(),
            Center(child: Text('Profile')),
          ],
        )
      ),
    );
  }
}
