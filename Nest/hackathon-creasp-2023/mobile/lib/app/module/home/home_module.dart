import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/module/home/presenter/screens/home/home_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/mock/art_completed_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhomes/art/art_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhomes/cat/cat_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhomes/models_save/models_screen.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),
    ChildRoute('/home', child: (context, args) => const HomeScreen()),
    ChildRoute('/art', child: (context, args) => const ArtScreen()),
    ChildRoute('/cat', child: (context, args) => const CatScreen()),
    ChildRoute('/modelssavedart', child: (context, args) => const ModelsSaveScreen()),
    ChildRoute('/artcompleted', child: (context, args) => const ArtScreenCompleted())
  ];
}