int countDigit(int number) {
  int count = 0;
  while (number > 0) {
    number = (number / 10).toInt();
    count++;
  }
  return count;
}
