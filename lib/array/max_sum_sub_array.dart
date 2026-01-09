void main() {
  print("======== Maximum Sum Subarray Using Kadane's Algorithm========");
  // Kadane’s Algorithm is a linear-time algorithm used to find the maximum sum of a contiguous subarray
  // within a given array of integers (which may include negative numbers).

  List<int> mainArr = [2, 3, -8, 7, -1, 2, 3]; // OP : 11
  print("Main arr : $mainArr");

  print("Max ${maxSum(mainArr)}");
}

int maxSum(List<int> arr) {
  int res = arr[0];
  int temp = arr[0];

  for (int i = 1; i < arr.length; i++) {
    temp = getMax(arr[i], temp + arr[i]);
    res = getMax(res, temp);
  }

  return res;
}

int getMax(int a, int b) => a > b ? a : b;
