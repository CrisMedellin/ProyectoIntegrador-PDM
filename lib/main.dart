import 'package:bibliteso/pages/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/search_book_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        title: 'Material App',
        home: BlocProvider(
          create: (context) => SearchBookBloc(),
          child: const SearchPage(),
        ));
  }
}
