void main(List<String> args) {


  List<String> geeks = ["Frontend","Backend","UX/UI","OP","Flutter"];
  geeks.add("Kids pogramming");
  print(geeks[2]);
  geeks[3] = "SMM";
  geeks.sort();
  geeks.removeAt(3);
  print(geeks);

  print('---------------------');


  Set<String> cleanGeeks = {"Android", "Graphic Desing"};
  cleanGeeks.add("Android");
  cleanGeeks.add("Java");
  print(cleanGeeks);

  print('---------------------');

  Map<String, dynamic> lessons = {"Flutter": 5, "Location": "Osh"};
  lessons['mouth'] = 6;
  lessons['ball'] = 100;
  print(lessons);
  print(lessons["Location"]);

  print('---------------------');

  print(geeks.length);
  print(cleanGeeks.length);
  print(lessons.values);


  print('---------------------');

  List<int> nums = [12,26,3,56,23,5,1345,31,3,4,5,12];
  nums.addAll([3,56,23,5,45,31,3,4,5,12]);
  print(nums);
  if (nums[0] < 100){
    print("Мало");
  }else{
    print("Много");
  }

  print('---------------------');


  for (int i = 0; i <= nums.length; i++) {
    print(i);
  }

  print('---------------------');


  for (int num in nums) {
    print(num);
  }

  print('---------------------');
  int max = 1;
  while (max <= 100){
    print(max);
    max++;
  }


  print('---------------------');


  for (var i = 0; i < 10; i++) {
    if (i == 5){
      continue;
    }
    print(i);
  }

  print('---------------------');

  int index = 0;
    while (true){
      index++;
      print(index);
      if (index == 666){
        break;
      }
    }

}