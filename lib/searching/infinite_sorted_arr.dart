void main() {
  /// Search in infinite sorted array
  List<int> arr = [1, 10, 15, 20, 40, 80, 90, 100, 120, 500];

  print("arr is $arr");
  int ele = 15;
  print("Inded of $ele is ${findIndInInfiniteArr(arr, ele)}");
}

int findIndInInfiniteArr(List<int> arr, int ele) {
  if (arr[0] == ele) return 0;

  int e = 1;
  //   while (true) {
  //     if (arr[e] < ele) {
  //       e = e * 2;
  //     } else if (arr[e] >= ele) {
  //       break;
  //     }
  //   }
  while (arr[e] < ele) {
    e = e * 2;
  }

  int s = 0;
  int ind = -1;

  while (s <= e) {
    int m = (s + e) ~/ 2;
    if (arr[m] == ele) {
      return m;
    } else if (arr[m] > ele) {
      e = m - 1;
    } else {
      s = m + 1;
    }
  }

  return ind;
}
