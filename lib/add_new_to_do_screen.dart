
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

  final GlobalKey<FormState>formkey=GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Add New To Do"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  hintText: "Title",
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please Enter Title";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: "Description",
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please Enter Description";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(!formkey.currentState!.validate()){
                  return;
                }
                Todo todo=Todo("pending", title: titleController.text, description: descriptionController.text.trim(), date: DateTime.now());
                Navigator.pop(context, todo);
              }, child: Text("Enter"))
          
            ]
          ),
        ),
      )

    );
  }
}
