import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/home/presenter/screens/home/home_screen.dart';
import 'package:mobile/app/home/presenter/screens/subhomes/new_cep/new_cep_screen.dart';
import 'package:mobile/app/home/presenter/screens/subhomes/search_error/search_error_screen.dart';
import 'package:mobile/app/home/presenter/screens/subhomes/search_list/search_list_screen.dart';
import 'package:mobile/app/home/presenter/screens/subhomes/search_two/search_two_screen.dart';
import 'package:mobile/app/welcome/welcome_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute("/", child: (context, args) => const WelcomeScreen()),
    ChildRoute('/home', child: (context, args) => const HomeScreen()),
    ChildRoute('/newcep', child: (context, args) => const NewCepScreen()),
    ChildRoute('/searchlist', child: (context, args) => const SearchListScreen()),
    ChildRoute('/error', child: (context, args) => const SearchErrorScreen()),
    ChildRoute('/two', child: (context, args) => const SearchTwo())

  ];
}