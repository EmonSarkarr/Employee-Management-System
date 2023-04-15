import 'package:flutter/material.dart';

class AddEmployeePage extends StatefulWidget {
  const AddEmployeePage({Key? key}) : super(key: key);

  @override
  State<AddEmployeePage> createState() => _AddEmployeePageState();
}

class _AddEmployeePageState extends State<AddEmployeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onTap:(){} ,
          ),
          TextField(),
        ],
      ),
    );
  }
}
