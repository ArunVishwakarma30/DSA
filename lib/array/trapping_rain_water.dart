void main() {
  print("========Trapping Rain Water========");

  List<int> mainArr = [4, 2, 0, 3, 2, 5];
  print("Main arr : $mainArr");

  print("Count ${trapWater(mainArr)}");
}

int trapWater(List<int> arr) {
  int count = 0;

  for (int i = 1; i < arr.length - 1; i++) {
    int leftMax = 0;
    int rightMax = 0;

    /// Find Left Max
    for (int j = i - 1; j >= 0; j--) {
      if (arr[j] > arr[i] && arr[j] > leftMax) {
        leftMax = arr[j];
      }
    }

    /// Find Right Max
    for (int k = i + 1; k < arr.length; k++) {
      if (arr[k] > arr[i] && arr[k] > rightMax) {
        rightMax = arr[k];
      }
    }

    int waterAtI = (leftMax < rightMax ? leftMax : rightMax) - arr[i];
    if (waterAtI > 0) {
      count += waterAtI;
    }
  }

  return count;
}
