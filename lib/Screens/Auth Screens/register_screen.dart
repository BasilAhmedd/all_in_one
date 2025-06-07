import 'package:all_in_one/Providers/Auth%20Provider/register_provider.dart';
import 'package:all_in_one/Screens/Auth%20Screens/login_screen.dart';
import 'package:all_in_one/Widgets/Auth%20Customs/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController name = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var registerProv = Provider.of<RegisterProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Register"),centerTitle: true,),
      body: Form(
          key: formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                        spacing: 25,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                CustomTextField(labelText: "Name", controller: name, icon: Icon(Icons.abc)),
                CustomTextField(labelText: "Email", controller: email, icon: Icon(Icons.email)),
                CustomTextField(labelText: "Phone", controller: phone, icon: Icon(Icons.phone)),
                CustomTextField(labelText: "Password", controller: pass, icon: Icon(Icons.password),obscure: true,),
                ElevatedButton(onPressed: () async{
                  if(formKey.currentState!.validate()){
                    await registerProv.registerProv(email: email.text, password: pass.text, phone: phone.text, name: name.text);
                    if(registerProv.registerModel!.status == true){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(registerProv.registerModel!.message)));
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(registerProv.registerModel!.message)));
                    }
                  }
                }, child: Text("Register")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ? "),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    }, child: Text("Login"))
                  ],
                )
                        ],
                      ),
              ),
            ),
          )),
    );
  }
}
