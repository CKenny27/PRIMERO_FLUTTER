import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/text_field.dart';

class NewPostScreen extends StatelessWidget {
  static String routeName = 'new_post';
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Post'),
        backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
        titleTextStyle: const TextStyle(
            fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFieldWidget(
              label: 'Titulo',
              placeholder: 'Titulo',
              icon: Icons.title,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFieldWidget(
              label: 'Contenido',
              placeholder: 'Contenido',
              isTextArea: true,
            ),
          ],
        ),
      ),
    );
  }
}
