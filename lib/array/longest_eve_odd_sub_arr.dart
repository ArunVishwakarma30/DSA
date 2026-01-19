void main() {
  print("======== Longest Even-Odd Subarray ========");

  List<int> mainArr = [10, 12, 14, 7, 8]; // OP : 3
  print("Main arr : $mainArr");

  print("Max ${getLongestEveOddSubArrayCoount(mainArr)}");
}

int getLongestEveOddSubArrayCoount(List<int> arr) {
  int res = 1;
  int temp = 1;

  bool isValEven = isEven(arr[0]);

  for (int i = 1; i < arr.length; i++) {
    bool currentEleVal = isEven(arr[i]);

    if (currentEleVal != isValEven) {
      temp++;
      res = getMax(temp, res);
    } else {
      temp = 1;
    }
    isValEven = currentEleVal;
  }

  return res;
}

bool isEven(int num) => num % 2 == 0;

int getMax(int a, int b) => a > b ? a : b;
