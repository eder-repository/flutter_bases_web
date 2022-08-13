import 'package:bases_web/ui/shared/widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key, required this.settings}) : super(key: key);

  final RouteSettings settings;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('No route defined for ${settings.name}'),
            const SizedBox(height: 20),
            CustomFlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stateful');
              },
              text: 'Regresar',
            )
          ],
        ),
      ),
    );
  }
}
