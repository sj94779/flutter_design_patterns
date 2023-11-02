import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/flutter-design-patterns/Singleton/singleton_in_abstract_factory.dart';

class SingletonExample extends StatefulWidget {
  const SingletonExample({super.key});

  @override
  State<SingletonExample> createState() => _SingletonExampleState();
}

class _SingletonExampleState extends State<SingletonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AbstractFactoryImpl.instance.buildIndicator(context),
        ],
      ),
    ),);
  }
}
