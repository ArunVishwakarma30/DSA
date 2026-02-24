void main() {
  List<int> arr = [1, 2, 3, 0, 3, 4, 5];
  List<bool> isMarked = List.filled(arr.length, false);

  for (int i = 0; i < arr.length; i++) {
    if (isMarked[arr[i]]) {
      print(arr[i]);
      break;
    } else {
      isMarked[arr[i]] = true;
    }
  }
}
