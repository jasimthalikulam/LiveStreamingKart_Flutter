import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_app/screens/club/club_page.dart';
import 'package:live_app/screens/club/special_id_page.dart';
import 'package:live_app/screens/splash_screen.dart';
import 'package:live_app/stores/login_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginStore>(
          create: (_) => LoginStore(),
        )
      ],
      child: GetMaterialApp(
        title: 'Flutter Live App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9E26BC)),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
