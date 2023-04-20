import 'dart:io';

import 'package:employee_management_system/models/employee_model.dart';
import 'package:flutter/material.dart';

class EmployeeDetailsPage extends StatefulWidget {
  static const nameRouting = "/employeeDetailsPage";

  const EmployeeDetailsPage({Key? key}) : super(key: key);

  @override
  State<EmployeeDetailsPage> createState() => _EmployeeDetailsPageState();
}

class _EmployeeDetailsPageState extends State<EmployeeDetailsPage> {
  late Size size;
  late EmployeeModel employee;

  @override
  void didChangeDependencies() {
    employee = ModalRoute.of(context)!.settings.arguments as EmployeeModel;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: const Text('Employee Details Page'), centerTitle: true),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    height: size.height / 3,
                    width: double.infinity,
                    child: employee.image == null
                        ? Image.asset(
                            "images/person.jpg",
                            height: size.height / 4,
                            width: size.width / 1.5,
                            fit: BoxFit.cover,
                          )
                        : Image.file(File(employee.image!),
                            height: size.height / 4,
                            width: size.width / 1.5,
                            fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      hoverColor: Colors.red,
                      title: Text(
                        "NAME: ${employee.name}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.person)),
                      tileColor: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      hoverColor: Colors.red,
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.email)),
                      title: Text("Email: ${employee.email} "),
                      tileColor: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      hoverColor: Colors.red,
                      trailing: IconButton(
                          onPressed: () {
                            print("Calling");
                          },
                          icon: const Icon(Icons.phone)),
                      title: Text("Phone: ${employee.phoneNumber} "),
                      tileColor: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      hoverColor: Colors.red,
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.monetization_on)),
                      title: Text("Salary: ${employee.salary} "),
                      tileColor: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      hoverColor: Colors.red,
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.info)),
                      title: Text("Designation: ${employee.designation} "),
                      tileColor: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      hoverColor: Colors.red,
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on)),
                      title: Text("Address: ${employee.address} "),
                      tileColor: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      hoverColor: Colors.red,
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.date_range)),
                      title: employee.dob == null
                          ? const Text("Not assigned")
                          : Text("Date of birth: ${employee.dob} "),
                      tileColor: Colors.black54),
                ),

              ],
            )));
  }
}
