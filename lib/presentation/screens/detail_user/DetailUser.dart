// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/detail_user/widgets/info.dart';
import 'package:flutter_application_1/presentation/screens/detail_user/widgets/list_post.dart';
import 'package:flutter_application_1/presentation/screens/screens.dart';

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
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Eliminar usuario'),
                      content: const Text('Seguro desea eliminar el usuario'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              'Aceptar',
                              style: TextStyle(
                                color: Color.fromRGBO(14, 126, 57, 0.997),
                              ),
                            )),
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancelar',
                                style: TextStyle(
                                  color: Colors.black45,
                                ))),
                      ],
                    );
                  });
            },
            icon: const Icon(
              Icons.delete_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            InfoWidget(),
            SizedBox(
              height: 10.0,
            ),
            ListPostWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, NewPostScreen.routeName),
        backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
        child: const Icon(
          Icons.note_add_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
