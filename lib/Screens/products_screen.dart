
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'productdetails_screen.dart';
import '../Providers/product_provider.dart';
import '../Widgets/product_widget.dart';
class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Products Page")),),
      body: Consumer<ProductProvider>(builder: (context, value, child) {
        var obj = value.productModel;
        if(obj==null)
          {
            value.getProductProvider();
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>details(name:obj.items[index]['name'],
                              image: obj.items[index]['image'],
                            description: obj.items[index]['description'],
                          ),
                      ));
                    },
                    child: ProductWidget (name:obj.items[index]['name'] ,
                      image: obj.items[index]['image'],
                    ),
                  );
              },
              itemCount: obj.items.length,
            );
          }
      },),
    );
  }
}
