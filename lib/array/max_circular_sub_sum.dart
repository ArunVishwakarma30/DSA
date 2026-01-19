void main() {
  print("======== Maximum Circular Subarray Sum ========");

  List<int> mainArr = [-8, 7, 6];
    print("Main arr : $mainArr"); 

  print("Max Sum is(Naive Approach) : ${maxCircularSum(mainArr)}"); /// naive approach (Time Complexity : O(n^3))
  print("Max Sum is(Optimised Approach) : ${optimisedMaxCircularSum(mainArr)}"); /// Optimised Approach (Time Complexity : O(n))
}

//// Naive approach
int maxCircularSum(List<int> arr) {
  List<List<int>> cirSubArrays = circularSubArrays(arr);
  int maxVal = arr[0];

  for (int i = 0; i < cirSubArrays.length; i++) {
    int sum = 0;
    for (int j = 0; j < cirSubArrays[i].length; j++) {
      sum += cirSubArrays[i][j];
    }
    if (sum > maxVal) {
      maxVal = sum;
    }
  }

  return maxVal;
}

List<List<int>> circularSubArrays(List<int> arr) {
  List<int> doubledArr = [...arr, ...arr];
  List<List<int>> res = [];

  for (int i = 0; i < arr.length; i++) {
    List<int> currentArr = [];
    for (int j = 0; j < arr.length; j++) {
      currentArr.add(doubledArr[i + j]);
      res.add(List.from(currentArr));
    }
  }

  return res;
}


///// Optimised approach
int optimisedMaxCircularSum(List<int> arr) {
  int normalMax = getMaxSum(arr);
  int minSubarray = getMinVal(arr);

  int totalSum = arr.reduce((a, b) => a + b);
  return getMax(normalMax, totalSum - minSubarray);
}

int getMaxSum(List<int> arr) {
  int res = arr[0];
  int temp = arr[0];

  for (int i = 1; i < arr.length; i++) {
    temp = getMax(arr[i], arr[i] + temp);
    res = getMax(temp, res);
  }

  return res;
}

int getMinVal(List<int> arr) {
  int res = arr[0];
  int temp = arr[0];

  for (int i = 1; i < arr.length; i++) {
    temp = getMin(arr[i], arr[i] + temp);
    res = getMin(temp, res);
  }

  return res;
}

int getMax(int a, int b) => a > b ? a : b;

int getMin(int a, int b) => a < b ? a : b;
