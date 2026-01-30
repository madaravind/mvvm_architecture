import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';
import 'app/app_bindings.dart';

void main() {
  runApp(
    MultiProvider( // If you using Provider State THIS IMPORTANT
      providers: AppBindings.providers,
      child: const MyApp(), // MyApp now consumes providers safely
    ),
  );
}

