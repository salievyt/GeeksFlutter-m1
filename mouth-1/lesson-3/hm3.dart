void main(List<String> args) {
  List<int> nums = [1,32,33,77,34,45,32,453,75,44,2,37,22];
  for (var i in nums) {

    if (i > 0 && i < 10){
      continue;
    }
    print(i);
    if (i > 100){
      break;
    }
  }

  print('---------------');


  List<String> names = ["Alihan","Beka","Nur","Zeka","Abu","Malik","Jumabek","Aziz","Kamal","Abdullah", "Faha"];
  for (var name in names) {
    if (name.startsWith('A') || name.startsWith('a')) {
      print(name);
    }
    if (name.length > 10) {
      print(name);
      break;
    }
  }

  print('---------------');

  List<String> index = [];
  while (index.length < 10) {
    index.add("${index.length + 1}");
    print(index);
  }

}