
import 'package:flutter/material.dart';

import 'to do.dart';

class AddNewToDoScreen extends StatefulWidget {
  const AddNewToDoScreen({super.key});

  @override
  State<AddNewToDoScreen> createState() => _AddNewToDoScreenState();
}

class _AddNewToDoScreenState extends State<AddNewToDoScreen> {

  //this is for control title and description
  final TextEditingController titleController=TextEditingController();
  final TextEditingController descriptionController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Add New To Do"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Todo todo=Todo("pending", title: titleController.text, description: descriptionController.text.trim(), date: DateTime.now());
              Navigator.pop(context, todo);
            }, child: Text("Enter"))

          ]
        ),
      )

    );
  }
}
