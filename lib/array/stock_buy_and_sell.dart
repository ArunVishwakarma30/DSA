void main() {
  print("========Stock Buy and Sell========");

  List<int> mainArr = [2, 3, 10, 6, 4, 8, 1];
  print("Main arr : $mainArr");

  print("Max profit is : ${calculateMaxProfit(mainArr)}");
}

int calculateMaxProfit(List<int> arr) {
  int profit = 0;

  for (int i = 1; i < arr.length; i++) {
    if (arr[i - 1] < arr[i]) {
      profit += arr[i] - arr[i - 1];
    }
  }

  return profit;
}
