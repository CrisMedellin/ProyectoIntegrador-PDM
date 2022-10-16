import 'package:flutter/material.dart';


class Loan extends StatelessWidget {
  const Loan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prestamos'),
      ),
      body:        ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Usuarios con Prestamo", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.purple[900])),
            ],
          ),
          Divider(height: 30,),
          ListTile(
            title: Text ("User: Cristian Medellín - IS727853"),
            subtitle: Text ("Entrega en 1 día", style: TextStyle(color: Colors.red),),
            trailing: MaterialButton(
              child: Text ("Notificar"),
              color: Colors.red[300],
              onPressed: () {}
            ),
          ),
          ListTile(
            title: Text ("User: Mauricio Peralta - IE728593"),
            subtitle: Text ("Entrega en 5 días", style: TextStyle(color: Colors.yellow[800]),),
            trailing: MaterialButton(
              child: Text ("Notificar"),
              color: Colors.yellow[800],
              onPressed: () {}
            ),
          ),
          ListTile(
            title: Text ("User: Raquel Escobedo - IS727456"),
            subtitle: Text ("Entrega en 7 días", style: TextStyle(color: Colors.green),),
            trailing: MaterialButton(
              child: Text ("Notificar"),
              color: Colors.green,
              onPressed: () {}
            ),
          ),



        ],
      ),
    );
  }
}