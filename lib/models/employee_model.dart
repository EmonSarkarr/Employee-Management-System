class EmployeeModel {
  String? empId;
  String name;
  String email;
  String phoneNumber;
  String dob;
  double salary;
  String image;
  String address;
  String designation;

  EmployeeModel(
      {this.empId,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.dob,
      required this.salary,
      required this.image,
      required this.address,
      required this.designation});

  @override
  String toString() {
    return 'EmployeeModel{empId: $empId, name: $name, email: $email, phoneNumber: $phoneNumber, dob: $dob, salary: $salary, image: $image, address: $address, designation: $designation}';
  }
}
