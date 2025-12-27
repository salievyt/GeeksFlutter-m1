void main(List<String> args) {
  print("Hello");
  int age = 900;
  int weather = 20;


  if (age >= 18) {
    print("geeks");
  } else {
    print("error");
  }

  if (weather <= 20) {
    print("cold");
  } else if (weather == 20) {
    print("hot");
  } else if (weather >= 20) {
    print("very hot");
  } else {
    print("unknown");
  }


//   if (age >= 40 && weather <= 20 || weather >= 30 && age < 20) {
//     print("Можно идти гулять");
//   } else {
//     print("Оставайтесь дома");
//   }


  if (age >= 10 && age <= 18 || weather <= 25 && weather >= 10) {
    print("одеься");
  } else{
    print("Нельзя идти гулять");
  }
  switch (age) {
    case 20 :
        print("Возраст 20");
    case 18 :
        print("Возраст 18");
    default:
        print("Возраст другое");
  }
}