
import 'package:flutter/material.dart';

class AddNewToDoScreen extends StatefulWidget {
  const AddNewToDoScreen({super.key});

  @override
  State<AddNewToDoScreen> createState() => _AddNewToDoScreenState();
}

class _AddNewToDoScreenState extends State<AddNewToDoScreen> {

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
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),

          ]
        ),
      )

    );
  }
}
