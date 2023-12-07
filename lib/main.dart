import 'package:flutter/material.dart';

import 'prezentare/pagina_contoar.dart';

// coverage:ignore-start
void main() {
  runApp(const MyApp());
}
// coverage:ignore-end

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicatia Contoar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaginaContoar(title: 'Aplicatia Contoar'),
    );
  }
}