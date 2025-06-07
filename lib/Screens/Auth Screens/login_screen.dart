import 'package:all_in_one/Providers/Auth%20Provider/login_provider.dart';
import 'package:all_in_one/Screens/Auth%20Screens/register_screen.dart';
import 'package:all_in_one/Screens/home_screen.dart';
import 'package:all_in_one/Widgets/Auth%20Customs/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var loginProv = Provider.of<LoginProvider>(context,listen: false);
    return Scaffold(
     appBar: AppBar(
       title: Text("Login"),
       centerTitle: true,
     ),
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 25,
              children: [
                CustomTextField(labelText: "Email", controller: email, icon: Icon(Icons.email)),
                CustomTextField(labelText: "password", obscure: true,controller: pass, icon: Icon(Icons.password)),
                ElevatedButton(onPressed: () async{
                  if(formKey.currentState!.validate()){
                    await loginProv.loginProv(email: email.text, password: pass.text);
                   if(loginProv.loginModel!.status == true){
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(loginProv.loginModel!.message)));
                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                   }else{
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(loginProv.loginModel!.message)));
                   }
                  }
                }, child: Text("Login")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ? "),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                    }, child: Text("Register"))
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
