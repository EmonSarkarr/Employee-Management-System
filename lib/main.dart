import 'package:employee_management_system/screens/add_employee_page.dart';
import 'package:employee_management_system/screens/employee_page.dart';
import 'package:employee_management_system/screens/splash_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAYA IT',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: EmployeePage.nameRouting,
      routes: {
        EmployeePage.nameRouting : (context) => EmployeePage(),
        AddEmployeePage.nameRouting : (context) => AddEmployeePage(),

      },
    );
  }
}

