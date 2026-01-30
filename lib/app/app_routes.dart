import 'package:flutter/material.dart';

import '../modules/auth/view/login_view.dart';
import '../modules/chat/view/chat_view.dart';
import '../modules/home/view/home_view.dart';

class AppRoutes {
  static const login = '/login';
  static const home = '/home';
  static const chat = '/chat';

  static Map<String, WidgetBuilder> routes = {
    login: (_) => LoginView(),
    home: (_) => HomeView(),
    chat: (_) => ChatView(),
  };
}
