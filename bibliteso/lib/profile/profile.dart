import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body:  Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg")
            ],
          ),
          Text("Nombre de Usuario:    Cristian Medellín", ),
          Text("Expediente:    IS727853", ),
          Text("Fecha Entrega:    17/10/2022", ),
          Text("No. Prestamos:    10", ),
          Text("Correo:   is727853@iteso.mx", ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: Text(
                  "Cerrar sesión", 
                ),
                color: Colors.blue,
                onPressed: () {
                  // Navigator.of(context).pushNamed("/reminder"); //For test use only
                  Navigator.of(context).pushNamed("/loan"); //For test use only
                  print("Terminar sesión");
                }
              ),
            ],
          )

        ] 
      ),
    );
  }
}