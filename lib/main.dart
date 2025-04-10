import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/auth/data/datasources/auth_remote_datasource.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/usecases/login.dart';
import 'features/auth/presentation/providers/auth_provider.dart';
import 'features/auth/presentation/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final repositoryImpl = AuthRepositoryImpl(AuthRemoteDatasource());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(Login(repositoryImpl)),
        ),
      ],
      child: MaterialApp(
        title: "Login",
        home: LoginScreen(),
      ),
    );
  }
}
