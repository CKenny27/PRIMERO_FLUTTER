// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuarios'),
        titleTextStyle: const TextStyle(
            fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text('Nombre'),
            subtitle: const Text('correo@correo.com'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () =>
                Navigator.pushNamed(context, DetailUserScreen.routeName),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, NewUserScreen.routeName);
        },
        backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
        child: const Icon(
          Icons.person_add,
          color: Colors.white,
        ),
      ),
    );
  }
}
