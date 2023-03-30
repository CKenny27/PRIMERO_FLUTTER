import 'package:flutter/material.dart';

class DetailUserScreen extends StatelessWidget {
  static String routeName = 'detail_user';
  const DetailUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalle Usuario'),
          backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
          titleTextStyle: const TextStyle(
              fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Informacion del usuario',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                elevation: 20,
                child: Column(
                  children: [
                    Column(
                      children: [
                        _item('Nombre', Icons.person),
                        _item('correo@correo.com', Icons.email),
                        _item(
                            'Masculino', Icons.supervised_user_circle_rounded),
                        _item('Activo', Icons.circle),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _item(String text, IconData icon) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: Colors.grey,
            size: 40.0,
          ),
          trailing: Text(text),
        ),
        const Divider()
      ],
    );
  }
}
