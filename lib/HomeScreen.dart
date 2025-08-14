import 'package:flutter/material.dart';

import 'add_new_to_do_screen.dart';
import 'to do.dart';

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
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Daily routine"),
      ),


      body: ListView.builder(
          itemCount:todoList.length,
          itemBuilder: (context, index) {
            Todo todo=todoList[index];
            return ListTile(
              onLongPress: (){
                todoList.removeAt(index);
                setState(() {});
              },
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
        onPressed: () async {

         Todo ?todo = await Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewToDoScreen()));
         if(todo!=null){
           todoList.add(todo);
           setState(() {});
         }

        },
        child: Icon(Icons.add),
      )

    );
  }
}


