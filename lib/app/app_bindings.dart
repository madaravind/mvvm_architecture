import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../modules/auth/viewmodel/auth_view_model.dart';
import '../modules/home/viewmodel/home_view_model.dart';
import '../data/repositories/auth_repository.dart';
import '../data/repositories/home_repository.dart';

class AppBindings {
  static final List<SingleChildWidget> providers = [
    ChangeNotifierProvider<AuthViewModel>(
      create: (_) => AuthViewModel(AuthRepository()),
    ),
    ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(HomeRepository()),
    ),
  ];
}
