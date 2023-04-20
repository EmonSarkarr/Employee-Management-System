class EmployeeModel {
  String? empId;
  String name;
  String email;
  int phoneNumber;
  String? dob;
  double salary;
  String? image;
  String address;
  String designation;

  EmployeeModel(
      {this.empId,
      required this.name,
      required this.email,
      required this.phoneNumber,
      this.dob,
      required this.salary,
      this.image,
      required this.address,
      required this.designation});
}

final List<EmployeeModel> empList = [
  EmployeeModel(
      name: "EMON",
      email: "emongmail.com",
      phoneNumber: 01723315828,
      salary: 1000,
      address: "Nillphamari",
      designation: "Developer"),
  EmployeeModel(
      name: "MON",
      email: 'mongmail.com',
      phoneNumber: 01716048324,
      salary: 5000,
      address: "Nillphamari",
      designation: "CEO"),
  EmployeeModel(
      name: "Mosfiqur Rahman",
      email: "mosfiqurrahmanGmail.com",
      phoneNumber: 0172222,
      salary: 111,
      address: "dhaka",
      designation: "Flutter Developer")
];
