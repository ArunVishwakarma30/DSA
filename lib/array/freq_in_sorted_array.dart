void main() {
  print("========Freq in a sorted Array========");

  List<int> mainArr = [10, 10, 10, 25, 30, 30];
  print("Main arr : $mainArr");

  List<int> freqInASortArray(List<int> arr) {
    int count = 1;
    List<int> freq = [];

    for (int i = 1; i < arr.length; i++) {
      if (arr[i] == arr[i - 1]) {
        count++;
      } else {
        freq.add(count);
        count = 1;
      }
    }

    freq.add(count);

    return freq;
  }

  print("Frequency of each ele is : ${freqInASortArray(mainArr)}");

  /// This appproach if Array is not sorted
  List<int> freqOfArrayUsingMap(List<int> arr) {
    Map<int, int> fre = {};
    for (int i = 0; i < arr.length; i++) {
      if (fre.containsKey(arr[i])) {
        int val = fre[arr[i]]!;
        fre[arr[i]] = ++val;
      } else {
        fre[arr[i]] = 1;
      }
    }

    return fre.values.toList();
  }

  print(
    "Frequency(Using map/Unsorted array) of each ele is : ${freqOfArrayUsingMap(mainArr)}",
  );
}
