import 'package:flutter/material.dart';


class Reminder extends StatelessWidget {
  const Reminder ({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recordatorios'),
      ),
      body: 
      ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Prestamos Pendientes", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.brown))
            ],
          ),
          ListTile(
            title: Text ("Padre Rico Padre Pobre"),
            subtitle: Text ("Entrega en 1 día", style: TextStyle(color: Colors.red),),
            trailing: Image.network("https://imagessl3.casadellibro.com/a/l/t5/03/9788403095403.jpg"),
          ),
          ListTile(
            title: Text ("Microcontrolador 8051"),
            subtitle: Text ("Entrega en 3 días", style: TextStyle(color: Colors.yellow[800]),),
            trailing: Image.network("https://m.media-amazon.com/images/I/91CmgDvfd+L.jpg"),
          ),
          ListTile(
            title: Text ("El hombre más rico de Babilonia"),
            subtitle: Text ("Entrega en 5 días", style: TextStyle(color: Colors.green),),
            trailing: Image.network("https://m.media-amazon.com/images/I/71n3Ts2pGEL.jpg"),
          ),

        ],
      ),
    );
  }
}