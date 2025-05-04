import 'package:driver_app/core/main_app_screen.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/auth/presentation/screens/login_screen.dart';
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
    final authProvider = Provider.of<AuthProvider>(context,listen: false);
    bool isLoggedIn  = await authProvider.checkToken();
    if (!mounted) return;
    if (isLoggedIn  == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => MainAppScreen()),
      );
    }
    else {
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
