void main() {
  List<int> mainArr = [10, 20, 30, 40, 50, 60, 70];

  print("Main arr is ${mainArr}");
  int element = 80;
  print("${getIndex(mainArr, element)}");
  print("${recursiveBSearch(mainArr, element, 0, mainArr.length - 1)}");
}

int recursiveBSearch(List<int> arr, int element, int start, int end) {
  if (start > end) return -1;
  int mid = (start + end) ~/ 2;
  if (element == arr[mid]) {
    return mid;
  } else if (element > arr[mid]) {
    start = mid + 1;
  } else {
    end = mid - 1;
  }
  return recursiveBSearch(arr, element, start, end);
}

int getIndex(List<int> arr, int element) {
  int start = 0;
  int end = arr.length - 1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (element == arr[mid]) {
      return mid;
    } else if (arr[mid] > element) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
  }

  return -1;
}
