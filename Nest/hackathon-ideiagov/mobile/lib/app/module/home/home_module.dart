import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/module/home/presenter/screens/home/home_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhome/register_address/register_address_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhome/seal_list/seal_list_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhome/send_doc/send_doc_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhome/statistics/statistics_screen.dart';
import 'package:mobile/app/module/home/presenter/screens/subhome/view_mapping/view_mapping_screen.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),
    ChildRoute('/home', child: (context, args) => const HomeScreen()),
    ChildRoute('/seallist', child: (context, args) => const SealListScreen()),
    ChildRoute('/senddoc', child: (context, args) => const SendDocScreen()),
    ChildRoute('/registeraddress', child: (context, args) => const RegisterAddressScreen()),
    ChildRoute('/viewmapping', child: (context, args) => const ViewMappingScreen()),
    ChildRoute('/statistics', child: (context, args) => const StatisticsScreen())
  ];
}
