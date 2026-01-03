// ignore: dangling_library_doc_comments
/// Problom Statement
/// Max value of (j-i) such that arr[j] > arr[i]

void main() {
  print("========Max Diff : Naive Approach========");

  List<int> mainArr = [2, 3, 10, 6, 4, 8, 1];
  print("Main arr : $mainArr");

  /*
  int maxDiff(List<int> arr) {
    int diff = 0;
    if (arr.length > 1) {
      diff = arr[1] - arr[0];
    } else {
      return arr[0];
    }

    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[j] - arr[i] > diff) {
          diff = arr[j] - arr[i];
        }
      }
    }

    return diff;
  }

  // print("Max Diff by Naive Approach is : ${maxDiff(mainArr)}");
  */

  print("========Max Diff : Optimised Approach========");

  ///  Return max of Two int
  int maximumVal(int a, int b) => a > b ? a : b;

  ///  Return min of Two int
  int minimumVal(int a, int b) => a < b ? a : b;

  int maxDiffOptmised(List<int> arr) {
    int max = arr[1] - arr[0];
    int min = arr[0];

    for (int i = 1; i < arr.length; i++) {
      max = maximumVal(max, arr[i] - min);
      min = minimumVal(min, arr[i]);
    }

    return max;
  }

  print("Max Diff is : ${maxDiffOptmised(mainArr)}");
}
