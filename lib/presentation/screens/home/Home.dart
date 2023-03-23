// ignore: file_names
import 'package:flutter/material.dart';

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
          return const ListTile(
            title: Text('Nombre'),
            subtitle: Text('correo@correo.com'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
        child: const Icon(
          Icons.person_add,
          color: Colors.white,
        ),
      ),
    );
  }
}
