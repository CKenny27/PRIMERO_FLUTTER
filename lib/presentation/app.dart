import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        NewUserScreen.routeName: (_) => const NewUserScreen(),
        DetailUserScreen.routeName: (_) => const DetailUserScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
