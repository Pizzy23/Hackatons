import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/module/auth/presenter/screens/login/login_controller.dart';
import 'package:mobile/app/module/auth/presenter/screens/login/login_screen.dart';
import 'package:mobile/app/module/auth/presenter/screens/register/register_controller.dart';
import 'package:mobile/app/module/auth/presenter/screens/register/register_screen.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => LoginController()),
    Bind.singleton((i) => RegisterController())
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => LoginScreen()),
    ChildRoute('/register', child: (context, args) => RegisterScreen())
  ];
}