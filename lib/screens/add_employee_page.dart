import 'dart:io';

import 'package:employee_management_system/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:employee_management_system/helper_function/snakbar.dart';

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
  String? dob;
  String? imagePath;
  ImageSource imageSource = ImageSource.camera;

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
      appBar: AppBar(
          title: const Text("Add New Employee"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: _saveEmployee, icon: const Icon(Icons.save)),
          ]),
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
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: selectDate, child: const Text("Choose a date")),
              Chip(label: Text(dob == null ? "No Date choosen" : dob!))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                  elevation: 50,
                  child: imagePath == null
                      ? Image.asset(
                          "images/person.jpg",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          File(imagePath!),
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        )),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      imageSource = ImageSource.camera;
                      getImage();
                    },
                    label: const Text("Choose from camera"),
                    icon: const Icon(Icons.camera),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      imageSource = ImageSource.gallery;

                      getImage();
                    },
                    label: const Text("Choose from gallery"),
                    icon: const Icon(Icons.browse_gallery),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(onPressed: () {}, child: Text("SAVE")),
          ),
        ],
      ),
    );
  }

  void selectDate() async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1971),
        lastDate: DateTime.now());
    if (selectedDate != null) {
      setState(() {
        dob = DateFormat("dd/MM/yyyy").format(selectedDate);
      });
    }
  }

  void _saveEmployee() {
    if (nameController.text.isEmpty) {
      showSnackbar(context, "Please fill up your name");
      return;
    }
    ;
    if (emailController.text.isEmpty) {
      showSnackbar(context, "please provide a Email");
    }
    ;
    if (phoneNumberController.text.isEmpty) {
      showSnackbar(context, "please provide a PhoneNumer");
    }
    ;
    if (salaryController.text.isEmpty) {
      showSnackbar(context, "please provide salary");
    }
    ;
    if (designationController.text.isEmpty) {
      showSnackbar(context, "please provide salary");
    }
    ;
    if (addressController.text.isEmpty) {
      showSnackbar(context, "please provide a address");
    }
    ;

    final employeeModel = EmployeeModel(
        name: nameController.text,
        email: emailController.text,
        image: imagePath!,
        dob: dob!,
        phoneNumber: int.parse(phoneNumberController.text),
        salary: double.parse(salaryController.text),
        address: addressController.text,
        designation: designationController.text);

    empList.add(employeeModel);
    Navigator.pop(context);
  }

  void getImage() async {
    final selectedImage = await ImagePicker().pickImage(source: imageSource);
    if (selectedImage != null) {
      setState(() {
        imagePath = selectedImage.path;
      });
    }
  }
}
