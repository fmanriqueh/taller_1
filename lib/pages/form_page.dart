import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {


  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos personales'),
      ),
      body: GestureDetector(
        onTap: ( ) {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: 18.0,
                  left: 18.0,
                  right: 18.0
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _form()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _form( ) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Nombre'
            ),
          ),
          TextFormField(
            controller: _surnameController,
            decoration: InputDecoration(
              labelText: 'Apellido'
            ),
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Correo electrónico'
            ),
          ),
          TextFormField(
            controller: _phoneController,
            decoration: InputDecoration(
              labelText: 'Celular'
            ),
          ),
          TextFormField(
            controller: _addressController,
            decoration: InputDecoration(
              labelText: 'Dirección de residencia'
            ),
          ),
          TextFormField(
            controller: _userController,
            decoration: InputDecoration(
              labelText: 'Usuario'
            ),
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña'
            ),
          ),
          ElevatedButton(
            onPressed: ( ) {
              Navigator.of(context).pushReplacementNamed('info',
                arguments: {
                  'name'    : _nameController.text,
                  'surname' : _surnameController.text,
                  'email'   : _emailController.text
                }
              );
            },
            child: Text('Enviar')
          )
        ],
      ),
    );
  }
}