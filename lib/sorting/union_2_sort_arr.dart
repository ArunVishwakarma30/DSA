void main() {
  /// Union of two sorted arrays (unique elements only)

  List<int> arr1 = [3, 5, 8, 20];
  List<int> arr2 = [2, 8, 9, 10, 15, 15, 15];

  // Expected output: [2, 3, 5, 8, 9, 10, 15, 20]
  List<int> outArr = unionOfTwoSortedArr(arr1, arr2);

  print("output arr is $outArr");
}

/// Efficient union using two-pointer technique (O(n + m))
/// Since arrays are sorted, we merge them while skipping duplicates
List<int> unionOfTwoSortedArr(List<int> a1, List<int> a2) {
  List<int> res = [];
  int m = 0;
  int n = 0;

  while (m < a1.length && n < a2.length) {
    // Skip duplicates within each array
    if (m > 0 && a1[m - 1] == a1[m]) {
      m++;
      continue;
    }
    if (n > 0 && a2[n - 1] == a2[n]) {
      n++;
      continue;
    }

    // Add the smaller element and move its pointer
    if (a1[m] < a2[n]) {
      res.add(a1[m]);
      m++;
    } else if (a1[m] > a2[n]) {
      res.add(a2[n]);
      n++;
    }
    // If both are equal, add once and move both pointers
    else {
      res.add(a2[n]);
      m++;
      n++;
    }
  }

  // Add remaining elements from a1 (skip duplicates)
  while (m < a1.length) {
    if (m > 0 && a1[m - 1] == a1[m]) {
      m++;
      continue;
    } else {
      res.add(a1[m]);
      m++;
    }
  }

  // Add remaining elements from a2 (skip duplicates)
  while (n < a2.length) {
    if (n > 0 && a2[n - 1] == a2[n]) {
      n++;
      continue;
    } else {
      res.add(a2[n]);
      n++;
    }
  }

  return res;
}
