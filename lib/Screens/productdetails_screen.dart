import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class details extends StatelessWidget {
  String image , name , description ;

  details({super.key,required this.image,required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Center(child: Text("Product Details ")),),
      body: Consumer(builder: (value,context, child)
      {
        return SingleChildScrollView(
          child: Column(
             children: [
               Image.network(image),
               ListTile(
                 title: Text(name),
                 subtitle: Text(description),
               ),
             ],
          ),
        );
      },),
    );
  }
}
