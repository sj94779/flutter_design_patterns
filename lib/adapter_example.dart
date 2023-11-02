import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/flutter-design-patterns/Adapter/adapter.dart';

class AdapterExample extends StatefulWidget {
  const AdapterExample({super.key});

  @override
  State<AdapterExample> createState() => _AdapterExampleState();
}

class _AdapterExampleState extends State<AdapterExample> {
  final PostAPI postAPI = PostAPI();


  @override
  Widget build(BuildContext context) {
    final posts = postAPI.getPosts();

    return Scaffold(appBar: AppBar(),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(itemCount: posts.length,
              itemBuilder: (context, index){

              final post = posts[index];
              return ListTile(
        title: Text(post.title),
        subtitle: Text(post.bio),
        );

            },),
          )
        ],
      ),);
  }
}
