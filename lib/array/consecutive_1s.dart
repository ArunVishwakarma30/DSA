void main() {
  print("======== Maximum consecutive 1s in binary Array========");

  List<int> mainArr = [1, 0, 1, 1, 1, 1, 0, 1, 1]; // OP : 4
  print("Main arr : $mainArr");

  print("Count ${maxConsecativeArr(mainArr)}");
}

int maxConsecativeArr(List<int> arr) {
  int count = 0;
  int currCount = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 1) {
      currCount++;
      if (count < currCount) {
        count = currCount;
      }
    } else {
      currCount = 0;
    }
  }

  return count;
}
