import 'package:flutter/material.dart';

import 'add_new_to_do_screen.dart';
import 'to do.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<Todo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: Text("Daily routine"),
      ),
      drawer: Stack(
        children: [
          Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/ff/db/1a/ffdb1a43a8228dec91ad8479a7c91f9e.jpg",
                      ),
                    ),
                  ),
                  child: Stack(
                    // Use Stack instead of Column
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0, // This will position it at the top right
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                            "https://i.pinimg.com/736x/d4/cb/4a/d4cb4a1eb4f8970ba1add636844160a6.jpg",
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 8,
                        child: Text(
                          "RIAZUL",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 7,
                        child: Text(
                          "CS STUDENT,UIU",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 50,
                        child: Text(
                          "Once upon a time,I had a flower",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          Todo todo = todoList[index];
          return ListTile(
            onLongPress: () {
              todoList.removeAt(index);
              setState(() {});
            },
            title: Text(todo.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todo.description),
                Text(todo.subject),
                Text(todo.date.toString()),
              ],
            ),
            trailing: Text(todo.status),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Todo? todo = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewToDoScreen()),
          );
          if (todo != null) {
            todoList.add(todo);
            setState(() {});
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
