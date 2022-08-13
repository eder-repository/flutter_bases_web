import 'package:bases_web/ui/pages/counter_pages.dart';
import 'package:bases_web/ui/pages/counter_provider_pages.dart';
import 'package:bases_web/ui/pages/page_not_found.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return CupertinoPageRoute(builder: (_) => const CounterScreen());
      case '/provider':
        return CupertinoPageRoute(builder: (_) => const CounterProviderPages());

      default:
        return CupertinoPageRoute(
            builder: (_) => PageNotFound(settings: settings));
    }
  }
}
