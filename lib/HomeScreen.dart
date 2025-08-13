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
          itemCount:todoList.length,
          itemBuilder: (context, index) {
            Todo todo=todoList[index];
            return ListTile(
              title: Text(todo.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(todo.description),
                  Text(todo.date.toString()),
                ],
              ),
              trailing: Text(todo.status),

            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Todo todo=Todo("pending", id: 1, title: "title", description: "description", date: DateTime.now()

          );
          todoList.add(todo);
          setState(() {});

        },
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
  final status;

  Todo(this.status, {required this.id, required this.title, required this.description, required this.date});
}

