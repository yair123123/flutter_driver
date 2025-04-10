import 'package:driver_app/core/screens/main_app_screen.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("my-app")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Consumer<AuthProvider>(
          builder: (context, provider, child) {
            if(provider.user != null){
              WidgetsBinding.instance.addPostFrameCallback((_){
                Navigator.pushReplacement(
                  context,
                   MaterialPageRoute(builder: (_) => MainAppScreen())
                   );
              });
            }
            return Column(
              
              children: [
                TextField(
                  controller:_emailController,
                  decoration : InputDecoration(labelText: "Email")
                ),
                TextField(
                  controller:_passwordController,
                  decoration : InputDecoration(labelText: "Password"),
                  obscureText: true,
                ),
                SizedBox(height: 10,),
                if (provider.is_loading) CircularProgressIndicator(),
                ElevatedButton(onPressed:() => provider.login(
                  _emailController.text,
                  _passwordController.text
                ),            
                  child: Text("Login"),),
                if (provider.user != null)
                Text("You are logged in as ${provider.user!.email}")
              ]
              );
          },
        ),
      ),
    );
  }
}
