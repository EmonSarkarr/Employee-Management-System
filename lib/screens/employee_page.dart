import 'package:employee_management_system/models/employee_model.dart';
import 'package:employee_management_system/screens/add_employee_page.dart';
import 'package:employee_management_system/screens/employee_details_page.dart';
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
          body: ListView.builder(
              itemCount: empList.length,
              itemBuilder: (context,index){
                final emp = empList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(emp.name),
                    subtitle: Text("emp.email"),
                    trailing: Text("$index"),
                    onTap: (){
                      Navigator.pushNamed(context, EmployeeDetailsPage.nameRouting,arguments: emp);

                    },
                    leading: IconButton(onPressed: (){},icon: const Icon(Icons.person)),
                    tileColor: index.isEven?Colors.orange:Colors.redAccent,
                  ),
                );
              }),
        ));

  }
}
