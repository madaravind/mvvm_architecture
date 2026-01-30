import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';
import 'app/app_bindings.dart';
import 'app/env/env.dart';
import 'app/env/env_manager.dart';
import 'app/env/env_resolver.dart';

void main() {
  EnvManager.init(EnvResolver.current);
  runApp(
    MultiProvider( // If you using Provider State THIS IMPORTANT
      providers: AppBindings.providers,
      child: const MyApp(), // MyApp now consumes providers safely
    ),
  );
}

