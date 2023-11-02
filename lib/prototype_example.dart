import 'package:flutter/material.dart';
//for mutable object
// import 'flutter-design-patterns/Prototype/prototype_mutable_classes.dart';

//for immutable object
import 'flutter-design-patterns/Prototype/prototype_immutable_classes.dart';

class PrototypeExample extends StatefulWidget {
  const PrototypeExample({super.key});

  @override
  State<PrototypeExample> createState() => _PrototypeExampleState();
}

class _PrototypeExampleState extends State<PrototypeExample> {
  @override
  Widget build(BuildContext context) {
    // mutable
    //  Person person =   Person(name: 'XYZ', lastName: 'ABC', age: 30, nation: 'IN', email: 'demo@gmail.com');

    //immutable
    Person person = const Person(
        name: 'XYZ',
        lastName: 'ABC',
        age: 30,
        nation: 'IN',
        email: 'demo@gmail.com');

    Person persson1 = person.clone();
    print(persson1.name);

    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
