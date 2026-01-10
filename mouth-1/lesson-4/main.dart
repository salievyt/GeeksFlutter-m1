void main(List<String> args) {
  print(getName("name"));
  print(summa(1, 21 , num4: 42, num3: 13, prince:3));
  print(minus(99, 9));
  print(multiply(5, 6));
  print(divibe(10,3).toInt());
  // open(title);
  open(title);
}

//
// camleCase = getName
// snailCase = get_name
// cebabCase = get-name
//


void title(String a) => print(a);

void open(Function(String) click){
  print("Start function");
  click("это возвращяет на title");
  print("End function");
}


int minus(int num1,int num2){
  return num1 - num2;
}

int multiply(int num1, int num2){
  return num1*num2;
}

double divibe(int num1, int num2){
  return num1/num2;
}

void greet() {
  print("Start function");
}

int year() {
  return 2026;
}

String getName(String name) {
  if (name.length <= 3) {
    return "Введите имя который имеет больше 3 символов";
  } else {
    return name;
  }
}

int summa(int num1, int num2, {int? num3, int num4 = 0, required int prince}) {
  if (num3 == null) {
    return num1 + num2 + num4 + prince;
  }
  return num1 + num2 + num3 + num4 + prince;
}
