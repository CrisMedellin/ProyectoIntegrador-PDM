import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: MaterialButton(
          child: Icon (Icons.person),
          color: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushNamed("/profile");
          }
        ),
      ),
    );
  }
}