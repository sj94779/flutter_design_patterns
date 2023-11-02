import 'package:flutter/material.dart';
import 'flutter-design-patterns/Abstract Factory/abstract_factory.dart';

class AbstractFactoryExample extends StatefulWidget {
  const AbstractFactoryExample({super.key});

  @override
  State<AbstractFactoryExample> createState() => _AbstractFactoryExampleState();
}

class _AbstractFactoryExampleState extends State<AbstractFactoryExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AbstractFactoryImpl.buildButton(context, 'Hello', () { }),
            const SizedBox(height: 10,),
            AbstractFactoryImpl.buildIndicator(context)
          ],
        ),
      ),
    );
  }
}
