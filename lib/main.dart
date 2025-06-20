import 'package:cosmic_explorer/di/dependency_injections.dart';
import 'package:cosmic_explorer/features/planets/presentation/planets_screen.dart';
import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dependenciesInjectionsSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return YaruTheme(
      child: MaterialApp(
        title: 'Cosmic Explorer',
        theme: yaruLight,
        darkTheme: yaruDark,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const PlanetsScreen(),
      ),
    );
  }
}
