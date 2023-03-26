import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/presentation/widgets/widgets.dart';
import '../../widgets/text_field.dart';

class NewUserScreen extends StatefulWidget {
  static String routeName = 'new_user';

  const NewUserScreen({super.key});

  @override
  State<NewUserScreen> createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  final List<ItemDropdown> listSex = [
    ItemDropdown(label: 'Femenino', value: 'female'),
    ItemDropdown(label: 'Masculino', value: 'male'),
  ];
  final List<ItemDropdown> listStatus = [
    ItemDropdown(label: 'Activo', value: 'active'),
    ItemDropdown(label: 'Inactivo', value: 'inactive'),
  ];

  ItemDropdown? _selectSex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo usuario'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25.0),
        backgroundColor: const Color.fromRGBO(14, 126, 57, 0.997),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFieldWidget(
                label: 'Nombre',
                placeholder: 'Nombre',
                icon: Icons.person,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFieldWidget(
                label: 'Correo',
                placeholder: 'Correo',
                icon: Icons.mail,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownWidget(label: 'Genero', list: listSex),
                  DropdownWidget(label: 'Estado', list: listStatus),
                ],
              ),
              const Spacer(),
              Container(
                width: 100.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(14, 126, 57, 0.997),
                    borderRadius: BorderRadius.circular(5.0)),
                child: Center(
                    child: Text(
                  'Guardar',
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          )),
    );
  }
}
