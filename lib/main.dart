import 'package:bases_web/router/route_generator.dart';
import 'package:bases_web/ui/pages/counter_pages.dart';
import 'package:bases_web/ui/pages/counter_provider_pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bases Web',
      initialRoute: '/stateful',
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
