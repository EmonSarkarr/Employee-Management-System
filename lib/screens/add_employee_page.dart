import 'package:flutter/material.dart';

class AddEmployeePage extends StatefulWidget {
  static const nameRouting = "/addEmployeePage";

  const AddEmployeePage({Key? key}) : super(key: key);

  @override
  State<AddEmployeePage> createState() => _AddEmployeePageState();
}

class _AddEmployeePageState extends State<AddEmployeePage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final salaryController = TextEditingController();
  final addressController = TextEditingController();
  final designationController = TextEditingController();




  @override
  void dispose() {
  nameController.dispose();
  emailController.dispose();
  phoneNumberController.dispose();
  salaryController.dispose();
  addressController.dispose();
  designationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Employee"), centerTitle: true),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onTap: () {},
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.transparent,
                  prefixIcon: Icon(Icons.drive_file_rename_outline),
                  hintText: "Enter Your Name",
                  labelText: "Name"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onTap: () {},
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.transparent,
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter Your Email ",
                  labelText: "Email"),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onTap: () {},
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.transparent,
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Enter Your Phone Number",
                  labelText: "Phone"),
            ),
          ),
          const SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onTap: () {},
              controller: salaryController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.transparent,
                  prefixIcon: Icon(Icons.monetization_on),
                  hintText: "Enter Your Salary ",
                  labelText: "Salary"),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onTap: () {},
              controller: designationController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.transparent,
                  prefixIcon: Icon(Icons.description),
                  hintText: "Enter Your Designation ",
                  labelText: "Designation"),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onTap: () {},
              controller: addressController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.transparent,
                  prefixIcon: Icon(Icons.location_on),
                  hintText: "Enter Your Address ",
                  labelText: "Address"),
            ),
          ),
          const SizedBox(height: 10,),

          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){},
                  child: const Text("Choose a date") ),
              Chip(label: Text("18/04/2023"))
            ],
          ),

          const SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            ],
          ),


        ],
      ),
    );
  }
}
