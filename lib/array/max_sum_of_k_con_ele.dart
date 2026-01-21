void main() {
  print("======= Maximum Sum of k consecutive element =======");

  List<int> mainArr = [1, 8, 30, -5, 20, 7];
  int k = 3;

  print("Maia arr is $mainArr");

  //     print("Flipped arr indexes are ${getFlips(mainArr)}");
  print("Max sum of $k consecutive grp ele is ${maxSumIs(mainArr, k)}");

  print(
    "Max sum of $k consecutive grp ele(Using sliding window tech) is ${maxSumUsingSlidingWindowTech(mainArr, k)}",
  );
}

// Brute force
int maxSumIs(List<int> arr, int k) {
  int res = -999999999999999;

  for (int i = 0; i < arr.length - k; i++) {
    int temp = 0;
    for (int j = 0; j < k; j++) {
      temp += arr[i + j];
    }
    res = getMax(temp, res);
  }

  return res;
}

int maxSumUsingSlidingWindowTech(List<int> arr, int k) {
  // Sum of first window. (Which is from 0 to k)
  int currSum = 0;
  for (int i = 0; i < k; i++) {
    currSum += arr[i];
  }
  int maxSum = currSum;

  // Slide the window
  for (int i = k; i < arr.length; i++) {
    currSum = currSum + arr[i] - arr[i - k];
    maxSum = getMax(maxSum, currSum);
  }

  return maxSum;
}

int getMax(int a, int b) => a > b ? a : b;
