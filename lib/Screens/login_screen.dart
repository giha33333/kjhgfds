import 'products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'signup_screen.dart';
import '../Providers/registration_provider.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(title:Center(child: Text(" Login Page")),),
      body: Consumer<RegisteProvider>(builder: (context, value, child)
      {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
              SizedBox(height: 50,),
              OutlinedButton(
                onPressed: () async {
                  bool login = await Provider.of<RegisteProvider>(
                      context, listen: false).loginProvider(
                      email.text, password.text);
                  if (login== true) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen()));
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(" again  ")));

                    child:
                    Text("Login");
                  };
                },

                  child:
                  Text("Login"),
              ),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
              },
                child: Text("ZHave An Account"),
              ),
            ],
          ),
        );
      },),
    );
  }
}
