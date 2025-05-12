import 'package:driver_app/features/auth/domain/entities/login_check_result.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/auth/presentation/screens/login_screen.dart';
import 'package:driver_app/features/main/presentation/screens/main_app_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    LoginCheckResult result = await authProvider.checkLoginWithRetry();
    switch (result) {
      case LoginCheckResult.serverError:
        showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                title: Text("שגיאת רשת"),
                content: Text("אנחנו מעבירים אותך למסך Login"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      );
                    },
                    child: Text("אישור"),
                  ),
                ],
              ),
        );

        break;
      case LoginCheckResult.success:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MainAppScreen()),
        );
        break;
      case LoginCheckResult.noToken:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final error = Provider.of<AuthProvider>(context).errorMessage;
    final warning = Provider.of<AuthProvider>(context).warnningMessage;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (warning != null)
              Text(
                warning,
                style: TextStyle(color: Colors.orangeAccent, fontSize: 16),
              ),
            SizedBox(height: 10),
            CircularProgressIndicator(),

            if (error != null)
              Text(error, style: TextStyle(color: Colors.red, fontSize: 16)),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
