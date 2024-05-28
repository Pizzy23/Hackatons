import 'package:app/core/ui/screens/auth/login/login_screen.dart';
import 'package:app/core/ui/screens/auth/login/register_screen.dart';
import 'package:app/core/ui/screens/home/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/ui/screens/auth/welcome/welcome_screen.dart';

class AppModule extends Module {

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const WelcomeScreen()),
    ChildRoute('/login', child: (context, args) => LoginScreen()),
    ChildRoute('/register', child: (context, args) => RegisterScreen()),
    ChildRoute('/home', child: (context, args) => const HomeScreen()),
    RedirectRoute('/redirect', to: '/'),
  ];
}