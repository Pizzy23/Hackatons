import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/module/auth/presenter/screens/login/login_screen.dart';
import 'package:mobile/app/module/auth/presenter/screens/welcome/welcome_screen.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const WelcomeScreen()),
    ChildRoute('/login', child: (context, args) => const LoginScreen())
  ];
}
