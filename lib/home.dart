import 'dart:ui';

import 'package:ecommerceapp/welcome.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class Home extends StatelessWidget {
  final List<String> images = [
    'https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834',
    'https://static.libertyprim.com/files/familles/peche-large.jpg?1574630286',
    'https://i.pinimg.com/564x/7f/82/b0/7f82b07e5335838ca4fc3a6f04003ffb.jpg',
    'https://static.libertyprim.com/files/familles/raisin-large.jpg?1569271841',
    'https://static.libertyprim.com/files/familles/figue-large.jpg?1569271764',
    'https://i.pinimg.com/564x/97/28/b7/9728b7799f2eeef9b8aab51d3ef0ead4.jpg',
    'https://i.pinimg.com/564x/d0/32/79/d0327942251aa22d4511e30abc9a6ee3.jpg',
    'https://i.pinimg.com/564x/29/f4/76/29f4765852f85076c27d63d6bfb3f7d2.jpg',
  ];

  final List<String> titles = [
    'Apple',
    'Peach',
    'Watermelon',
    'Grapes',
    'Fig',
    'Orange',
    'Strawberry',
    'Banana',
  ];

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Handle menu icon tap
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          const SizedBox(height: 2),
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: const Color(0xfbe0fdd6),
              borderRadius: BorderRadius.circular(100),
            ),
            width: 266,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Color(0xff020202),
                ),
                labelText: "Search here..",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 2),
        ],
        backgroundColor: Color(0xff4cae43),
        title: const Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            )),
        backgroundColor: Color(0xff4a8e53),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridItem(image: images[index], title: titles[index]);
        },
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String image;
  final String title;

  const GridItem({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            image,
            width: 140,
            height: 100,
            fit: BoxFit.fitWidth,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 17, fontFamily: 'cairo', color: Color(0xff000000)),
          ),
          TextButton.icon(
            onPressed: () {
              // Navigate to the desired page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyListView()),
              );
              print('Product added to cart');
            },
            icon: Icon(Icons.shopping_cart,
                color: Color(0xff409555)), // Specify the icon
            label: Text(
              'Add to Cart',
              style: TextStyle(fontSize: 13, color: Color(0xff358e3d)),
            ),
            // Specify the text
          )
        ],
      ),
    );
  }
}
