import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'Apple [price  70 EGP] ',
      description:
          'An apple is a sweet, edible fruit produced by an apple tree (Malus domestic). In France, it is the most consumed edible fruit and the third in the planet.',
      imageUrl:
          'https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834',
    ),
    Product(
      title: 'Peach  [price  40 EGP] ',
      description:
          'Peaches are drupes or fleshy stone fruits of which there are thousands of varieties. They grow in the Prunus Persica peach tree.',
      imageUrl:
          'https://static.libertyprim.com/files/familles/peche-large.jpg?1574630286',
    ),
    Product(
      title: 'Watermelon [price  50 EGP]',
      description:
          'The watermelon Citrullus Lanatus, or Citrullus Vulgaris, belongs to the Cucurbitaceae family such as melon, pumpkin or cucumber.',
      imageUrl:
          'https://i.pinimg.com/564x/7f/82/b0/7f82b07e5335838ca4fc3a6f04003ffb.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'card',
          style: TextStyle(
              fontFamily: 'cairo', fontSize: 25, color: Color(0xffffffff)),
        ),
        backgroundColor: Color(0xff4cba64),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemExtent: 70.0,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Image.network(products[index].imageUrl),
              title: Text(products[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailPage(product: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String title;
  final String description;
  final String imageUrl;

  Product(
      {required this.title, required this.description, required this.imageUrl});
}

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4cba64),
        title: Text(
          'Product Detail',
          style: TextStyle(
              fontFamily: 'cairo', fontSize: 20, color: Color(0xffffffff)),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(product.imageUrl),
              Text(product.title,
                  style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 25,
                      color: Color(0xff000000))),
              SizedBox(
                width: 200,
                height: 20,
                child: Divider(color: Color(0xff9a9a9a)),
              ),
              Text(product.description,
                  style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 20,
                      color: Color(0xff939090)))
            ],
          ),
        ),
      ),
    );
  }
}
