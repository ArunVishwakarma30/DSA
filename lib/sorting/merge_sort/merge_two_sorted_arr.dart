void main() {
  List<int> arr1 = [2, 5, 10, 15, 25, 45, 65];
  List<int> arr2 = [5, 6, 6, 15];

  // op : [5 6 6 10 15 15 20]

  print("arr1 : $arr1\narr2 : $arr2\n====================");

  List<int> mergedArr = mergeTwoSortedArr(arr1, arr2);

  print("Merged arr : $mergedArr");
}

List<int> mergeTwoSortedArr(List<int> arr1, List<int> arr2) {
  List<int> res = [];

  int i = 0;
  int j = 0;

  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] <= arr2[j]) {
      res.add(arr1[i]);
      i++;
    } else {
      res.add(arr2[j]);
      j++;
    }
  }

  /// Remaining arr1
  while (i < arr1.length) {
    res.add(arr1[i]);
    i++;
  }

  /// Remaining arr2
  while (j < arr2.length) {
    res.add(arr2[j]);
    j++;
  }

  return res;
}
