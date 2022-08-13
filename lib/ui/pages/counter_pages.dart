import 'package:bases_web/ui/shared/widgets/custom_app_menu.dart';
import 'package:bases_web/ui/shared/widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text(
            'contador statefull',
            style: TextStyle(fontSize: 20),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Counter : $counter',
                  style: const TextStyle(
                      fontSize: 80, fontWeight: FontWeight.bold)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  text: 'Increment',
                  color: Colors.pink),
              CustomFlatButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  text: 'Decrement',
                  color: Colors.pink),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
