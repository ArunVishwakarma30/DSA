void main() {
  print("Remove duplicates from the sorted array");

  List<int> mainArr = [10, 20, 20, 30, 30, 30];
  print("Main arr : $mainArr");

  List<int> removeDup(List<int> arr) {
    List<int> result = [];

    for (int i = 0; i < arr.length; i++) {
      if (i == 0 || arr[i] != arr[i - 1]) {
        arr.add(arr[i]);
      }
    }

    return result;
  }

  print("Dup removed arr : ${removeDup(mainArr)}");
}
