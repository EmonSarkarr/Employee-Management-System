import 'package:flutter/material.dart';

class AddEmployeePage extends StatefulWidget {
 static const nameRouting = "/addEmployeePage";
  const AddEmployeePage({Key? key}) : super(key: key);

  @override
  State<AddEmployeePage> createState() => _AddEmployeePageState();
}

class _AddEmployeePageState extends State<AddEmployeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Employee"),centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(

              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText:  "Name",
              ),
              onTap:(){} ,
            ),
          ),
          TextField(


          ),
        ],
      ),
    );
  }
}
