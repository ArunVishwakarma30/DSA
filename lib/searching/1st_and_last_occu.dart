void main() {
  List<int> arr = [1, 20, 20, 20, 20];

  print("Main arr $arr");
  int e = 20;
  print("Element is $e and first occured ind is ${getFirstOccuredInd(arr, e)}");

  print("Element is $e and Last occured ind is ${getLastOccuredInd(arr, e)}");

  print(
    "Element is $e and number of time it occured is ${countOccurrence(arr, e)}",
  );
}

int getFirstOccuredInd(List<int> arr, int ele) {
  int s = 0;
  int e = arr.length - 1;
  int r = -1;
  while (s <= e) {
    int m = (s + e) ~/ 2;
    if (arr[m] == ele) {
      e = m - 1;
      r = m;
    } else if (arr[m] > ele) {
      e = m - 1;
    } else {
      s = m + 1;
    }
  }
  return r;
}

int getLastOccuredInd(List<int> arr, int ele) {
  int s = 0;
  int e = arr.length - 1;
  int r = -1;
  while (s <= e) {
    int m = (s + e) ~/ 2;
    if (arr[m] == ele) {
      s = m + 1;
      r = m;
    } else if (arr[m] > ele) {
      e = m - 1;
    } else {
      s = m + 1;
    }
  }
  return r;
}

int countOccurrence(List<int> arr, int ele) {
  int firstInd = getFirstOccuredInd(arr, ele);
  int lastInd = getLastOccuredInd(arr, ele);
  int count = lastInd - firstInd + 1;
  return count > 0 ? count : 0;
}
