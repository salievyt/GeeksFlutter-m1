void main(List<String> args) {
  List<int> nums = [4,34,52,3,25,37,65,22];
  print(sum_positive_even(nums));
}

int sum_positive_even(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    if (number > 0 && number % 2 == 0) {
      sum += number;
    }
  }
  return sum;
}