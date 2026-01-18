
import 'employee.dart';

class Manager extends Employee{
  Manager({required super.name, required super.salary, required super.department});
  @override
  work() {
    return "Менеджер управляет командой в отделе ${department.name}";
  }
}