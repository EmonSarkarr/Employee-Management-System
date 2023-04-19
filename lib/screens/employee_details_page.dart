import 'package:flutter/material.dart';

class EmployeeDetailsPage extends StatefulWidget {

  static const nameRouting = "/employeeDetailsPage";
  const EmployeeDetailsPage({Key? key}) : super(key: key);

  @override
  State<EmployeeDetailsPage> createState() => _EmployeeDetailsPageState();
}

class _EmployeeDetailsPageState extends State<EmployeeDetailsPage> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("Employee Details page"),centerTitle: true),
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height / 3,
            width:double.infinity,
            color: Colors.purple,
            child: const Text("EMP image"),
          ),

        ],
      ),
    ));
  }
}
