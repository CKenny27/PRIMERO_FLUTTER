import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/detail_user/widgets/info.dart';
import 'package:flutter_application_1/presentation/screens/detail_user/widgets/list_post.dart';

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
          children: [
            InfoWidget(),
            const SizedBox(
              height: 10.0,
            ),
            ListPostWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
