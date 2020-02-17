import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

void main () {
  runApp(MaterialApp(
    title: "数据传递",
    home: ProductList(
      products: List.generate(20, (i)=>Product('商品 $i', '这是一个商品详情，编号：$i'))
    )
  ));
}

class ProductList extends StatelessWidget{
   //接收父类传入的1000条数据
  final List<Product> products; // 定义变量
  ProductList({key, @required this.products}):super(key:key); // 接受数据


  @override
  Widget build(BuildContext context ){
      return Scaffold(
          appBar: AppBar(title: new Text('商品列表')),
          body: ListView.builder(
            itemCount: products.length, // listItem是接收到的list数据
            itemBuilder:(context,index){
              return new ListTile(
                title:new Text(products[index].title),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new ProductDetail(prod: products[index])
                    )
                  );
                }
              );
            }
          )
        );
  }
}

class ProductDetail extends StatelessWidget {
  final Product prod; // 定义变量
  ProductDetail({key, @required this.prod}):super(key:key); // 接受数据

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('${prod.title}')),
      body: Center(child: Text('${prod.description}'),)
    );
  }
}