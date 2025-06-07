import 'package:all_in_one/Providers/Products%20Provider/products_provider.dart';
import 'package:all_in_one/Screens/Products%20Screens/shop_details_screen.dart';
import 'package:all_in_one/Widgets/Products%20Customs/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop"),centerTitle: true,),
      body: Consumer<ProductsProvider>(builder: (context, value, child) {
        var data = value.productsModel;
        if(data == null){
          value.getProductsProv();
          return Center(child: CircularProgressIndicator());
        }else{
          return GridView.builder(
              itemCount: data.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
              , itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShopDetailsScreen(
                  img: data.products[index]['imageUrl'],
                  name: data.products[index]['name'],
                  desc: data.products[index]['description'],
                  price: data.products[index]['price']),));
            },
                child: CustomProductCard(
                img: data.products[index]['imageUrl'],
                name: data.products[index]['name'],
                price: data.products[index]['price']),
              ),);
        }
      },),
    );
  }
}
