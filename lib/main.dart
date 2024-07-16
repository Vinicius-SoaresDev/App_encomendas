import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/meus_estabelecimentos.dart';
import 'package:flutter_application_1/pages/telainicial.dart';
import 'package:flutter_application_1/pages/detalhes_estabelecimento.dart';
import 'package:flutter_application_1/pages/detalhes_encomenda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/auth/telainicial",
      routes: {
        "/auth/telainicial": (_) => telainicial(),
        "/auth/meus_estabelecimentos": (_) => meus_estabelecimentos(),
        "/auth/detalhes_estabelecimento": (_) => detalhes_estabelecimento(),
        "/auth/detalhes_encomenda": (_) => detalhes_encomenda(),
      },
    );
  }
}
