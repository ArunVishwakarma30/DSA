void main() {
  List<int> arr = [10, 15, 20, 40, 5, 8, 11];

  print("arr : $arr");

  List<int> res = mergeSort(arr, 0, arr.length - 1);

  print("Sorted arr : $res");
}
List<int> mergeSort(List<int> arr, int left, int right) {
  if (right > left) {
    int mid = left + (right - left) ~/ 2;
    mergeSort(arr, left, mid);
    mergeSort(arr, mid+1, right);
    mergeTwoSortedArr(arr, left, mid, right);
  }

  return arr;
}

List<int> mergeTwoSortedArr(List<int> arr, int low, int mid, int high) {
  int n1 = mid - low + 1;
  int n2 = high - mid;

  List<int> leftArr = [];
  List<int> rightArr = [];

  for (int i = 0; i < n1; i++) {
    leftArr.add(arr[low + i]);
  }
  for (int i = 0; i < n2; i++) {
    rightArr.add(arr[mid + i + 1]);
  }

  int i = 0, j = 0, k = low;

  while (i < n1 && j < n2) {
    if (leftArr[i] <= rightArr[j]) {
      arr[k] = leftArr[i];
      k++;
      i++;
    } else {
      arr[k] = rightArr[j];
      k++;
      j++;
    }
  }

  while (i < n1) {
    arr[k] = leftArr[i];
    k++;
    i++;
  }

  while (j < n2) {
    arr[k] = rightArr[j];
    k++;
    j++;
  }

  return arr;
}
