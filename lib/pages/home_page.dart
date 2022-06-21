// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dev_tacs/widgets/post_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'new_post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: Center(child: Text("Sorry no posts yet")),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewPostPage()),
            );
          },
          child: Icon(Icons.add)),
    );
  }
}
