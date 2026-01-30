import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../core/locale/locale_view_model.dart';
import '../core/theme/theme_view_model.dart';
import '../data/services/chat_socket_service.dart';
import '../modules/auth/viewmodel/auth_view_model.dart';
import '../modules/chat/viewmodel/chat_view_model.dart';
import '../modules/home/viewmodel/home_view_model.dart';
import '../data/repositories/auth_repository.dart';
import '../data/repositories/home_repository.dart';

class AppBindings {
  static final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => ChatViewModel(ChatSocketService())..init()),
    ChangeNotifierProvider(create: (_) => LocaleViewModel()),
    ChangeNotifierProvider(create: (_) => ThemeViewModel()),
    ChangeNotifierProvider(create: (_) => AuthViewModel(AuthRepository())),
    ChangeNotifierProvider(create: (_) => HomeViewModel(HomeRepository())),
  ];
}
