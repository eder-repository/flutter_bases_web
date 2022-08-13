import 'package:bases_web/ui/shared/widgets/custom_app_menu.dart';
import 'package:bases_web/ui/shared/widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterProviderPages extends StatefulWidget {
  const CounterProviderPages({Key? key}) : super(key: key);

  @override
  State<CounterProviderPages> createState() => _CounterProviderPagesState();
}

class _CounterProviderPagesState extends State<CounterProviderPages> {
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
            'contador provider',
            style: TextStyle(fontSize: 20),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Counter  : $counter',
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
