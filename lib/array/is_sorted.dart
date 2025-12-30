void main() {
  print("This is is_sorted.dart file\n");
  List<int> mainArr = [1, 25, 15, 30, 28, 45, 48];
  List<int> mainArr2 = [30, 5, 15, 3, 12];
  List<int> mainArr3 = [1, 10, 42, 55];

  bool isSortedNaiveApproach(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[i]) {
          return false;
        }
      }
    }

    return true;
  }

  print("is $mainArr sorted ${isSortedNaiveApproach(mainArr)}");
  print("is $mainArr2 sorted ${isSortedNaiveApproach(mainArr2)}");
  print("is $mainArr3 sorted ${isSortedNaiveApproach(mainArr3)}");

  bool littleOptimisedApproach(List<int> arr) {
    for (int i = 1; i < arr.length; i++) {
      if (arr[i] < arr[i - 1]) {
        return false;
      }
    }

    return true;
  }

  print("is $mainArr sorted ${littleOptimisedApproach(mainArr)}");
  print("is $mainArr2 sorted ${littleOptimisedApproach(mainArr2)}");
  print("is $mainArr3 sorted ${littleOptimisedApproach(mainArr3)}");
}
