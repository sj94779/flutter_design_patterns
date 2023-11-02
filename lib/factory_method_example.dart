import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/flutter-design-patterns/Factory%20Method/platform_button.dart';

class FactoryMethodExample extends StatefulWidget {
  const FactoryMethodExample({super.key});

  @override
  State<FactoryMethodExample> createState() => _FactoryMethodExampleState();
}

class _FactoryMethodExampleState extends State<FactoryMethodExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PlatformButton(Theme.of(context).platform).build(() {
            //  print('Hello Android');
            }, const Text('click')),

          ],
        ),
      ),
    );
  }
}
