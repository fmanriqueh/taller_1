import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Map info = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda vista'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${info['name']} ${info['surname']}'),
            SizedBox(height: 15.0),
            Text('${info['email']}'),
            SizedBox(height: 15.0),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0)
              ),
              width: 300,
              child: Image.network('https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
            ),
            ElevatedButton(
              onPressed: ( ) {
                Navigator.of(context).pushReplacementNamed('form');
              },
              child: Text('Salir')
            )
          ],
        ),
      ),
    );
  }
}