import 'package:bases_web/ui/shared/widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stateful');
            },
            text: 'Contador Stateful',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/provider');
            },
            text: 'Contador Provider',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/bloc');
            },
            text: 'Otra pagina',
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
