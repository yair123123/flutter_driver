import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/main/presentation/screens/main_app_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final userNameController = TextEditingController();
  final idController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("דרייבר 10")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Consumer<AuthProvider>(
          builder: (context, provider, child) {
            if (provider.user != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => MainAppScreen()),
                );
              });
            }
            return Column(
              children: [
                TextField(
                  key: Key("usernameField"),
                  controller: userNameController,
                  decoration: InputDecoration(labelText: "Username"),
                ),
                TextField(
                  key: Key("idField"),
                  controller: idController,
                  decoration: InputDecoration(labelText: "Id"),
                  obscureText: true,
                ),
                SizedBox(height: 10),
                if (provider.isLoading) CircularProgressIndicator(),
                ElevatedButton(
                  key: Key("loginButton"),
                  onPressed:
                      () => provider.login(
                        userNameController.text,
                        idController.text,
                      ),
                  child: Text("Login"),
                ),
                if (provider.errorMessage != null)
                  Text("שגיאה ${provider.errorMessage}"),
              ],
            );
          },
        ),
      ),
    );
  }
}
