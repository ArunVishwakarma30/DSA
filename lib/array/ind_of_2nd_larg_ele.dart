///// Naive(Brute Force) Approach
/*
void main() {
  print("This is ind_of_largest_ele.dart file\n");

  // Test cases
  List<List<int>> testCases = [
    [10, 105, 20, 50], // normal case
    [5, 5, 5, 5], // all elements same
    [1, 2], // minimum valid length
    [100], // single element
    [], // empty array
    [3, 9, 1, 9, 7], // duplicate largest values
    [-10, -20, -30], // negative numbers
  ];

  // Function to find 2nd largest element (using sorting)
  int find2ndLargest(List<int> arr) {
    print("Input : $arr");

    if (arr.length < 2) {
      print("Array length < 2 → No 2nd largest element\n");
      return -1;
    }

    // Sorting in descending order (Selection Sort)
    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[i] < arr[j]) {
          int temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }

    print("Sorted array (desc): $arr");

    // If all elements are same
    if (arr[0] == arr[arr.length - 1]) {
      print("All elements are equal → No 2nd largest element\n");
      return -1;
    }

    print("2nd Largest Element: ${arr[1]}\n");
    return arr[1];
  }

  // Running all test cases
  for (int i = 0; i < testCases.length; i++) {
    print("Test Case ${i + 1}:");
    find2ndLargest(List.from(testCases[i])); // copy to avoid modifying original
  }
}*/

void main() {
  print("This is ind_of_2nd_larg_ele.dart file\n");

  List<int> mainArr = [30, 5, 15, 3, 12];

  print("input arr $mainArr");

  int find2ndLargestInd(List<int> arr) {
    int max1 = 0;
    int max2 = 0;

    int ind1 = -1;
    int ind2 = -1;

    for (int i = 0; i < arr.length; i++) {
      if (arr[i] > max1) {
        max2 = max1;
        ind2 = ind1;

        max1 = arr[i];
        ind1 = i;
      } else if (arr[i] < max1 && arr[i] > max2) {
        max2 = arr[i];
        ind2 = i;
      }
    }

    return ind2;
  }

  print("output arr : ${find2ndLargestInd(mainArr)}");
}
