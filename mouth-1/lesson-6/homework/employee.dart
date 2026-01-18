import 'department.dart';

class Employee {
  String name;
  int salary;
  Department department;
  Employee({required this.name, required this.salary, required this.department});

  work(){
    return "Сотрудник работает";
  }
}