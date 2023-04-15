import 'package:employee_management_system/screens/add_employee_page.dart';
import 'package:flutter/material.dart';

class EmployeePage extends StatefulWidget {
  static const nameRouting = "/employeePage";
  const EmployeePage({Key? key}) : super(key: key);

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){

              Navigator.pushNamed(context, AddEmployeePage.nameRouting);
            },
            child: const Icon(Icons.add),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],

          ),
        ));

  }
}
