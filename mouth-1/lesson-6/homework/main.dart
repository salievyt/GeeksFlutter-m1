import 'department.dart';
import 'employee.dart';
import 'manager.dart';
import 'book.dart';
import 'genre.dart';

void main(List<String> args) {
  List <Employee> staffs = [
    Employee(name: "Timur", salary: 1499, department: Department.IT),
    Manager(name: "Maxim", salary: 1000, department: Department.HR),
    Employee(name: "Olya", salary: 1999, department: Department.IT),
    Employee(name: "Milana", salary: 500, department: Department.IT),
    Employee(name: "Ilya", salary: 1000, department: Department.IT),
    Employee(name: "Beka", salary: 2000, department: Department.IT),
  ];
  for (var stuff in staffs) {
    print("${stuff.name} ${stuff.work()}");
  }

  print("-----------------------------");
  
  List<Book> books = [
    Book(title: "Властелин колец", author: "Дж. Р. Р. Толкин", genre: Genre.FANTASY),
    Book(title: "Война и мир", author: "Лев Толстой", genre: Genre.HISTORY),
    Book(title: "Марсианин", author: "Энди Вейр", genre: Genre.SCIENCE),
    Book(title: "Гарри Поттер", author: "Джоан Роулинг", genre: Genre.FANTASY),
    Book(title: "1984", author: "Джордж Оруэлл", genre: Genre.SCIENCE),
    Book(title: "Преступление и наказание", author: "Федор Достоевский", genre: Genre.HISTORY),
  ];
  if (books.isEmpty) {
    print("Ошибка: список книг пуст");
  }
  for (var book in books) {
      if (book.genre == Genre.FANTASY) {
      print(book.title);
    }
  }
  
}