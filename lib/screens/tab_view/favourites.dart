import 'package:flutter/material.dart';

class FavouritesTab extends StatelessWidget {
  const FavouritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://www.bing.com/th/id/OIP.jIN9VsbXO54Tt6c6RWkUSgHaLH?w=190&h=291&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                fit: BoxFit.cover,
                height: 100,
                width: 70,
              ),
            ),
            title: Text(
              'Title',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Subtitle'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    MaterialButton(
                      color: Colors.black12,
                      elevation: 0,
                      minWidth: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                      onPressed: () {},
                      child: Icon(Icons.favorite, size: 13,),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
