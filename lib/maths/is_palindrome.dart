bool isPalindrome(int number) {
  ////7894
  if (number < 0) {
    return false;
  }

  int originalNumber = number;
  int reverseNumber = 0;
  while (number > 0) {
    reverseNumber = reverseNumber * 10 + number % 10;
    number = number ~/ 10;
  }

  if (originalNumber != reverseNumber) {
    return false;
  }
  return true;
}
