import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<Todo>todoList=[];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: ListView.builder(
          itemCount:5,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Title of to do"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description"),
                  Text("12.12.12"),
                ],
              ),
              trailing: Text("pending")

            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      )

    );
  }
}

class Todo{
  final int id;
  final String title;
  final String description;
  final DateTime date;

  Todo({required this.id, required this.title, required this.description, required this.date});
}

