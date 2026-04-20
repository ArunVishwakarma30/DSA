void main() {
  /// Intersection of two sorted arrays (unique elements only)

  List<int> arr1 = [3, 5, 10, 10, 10, 15, 15, 20];
  List<int> arr2 = [5, 10, 10, 15, 30];

  // Expected output: [5, 10, 15]
  List<int> outArr = intersectionMergeSortSol(arr1, arr2);

  print("output arr is $outArr");
}

/// Efficient solution using two-pointer technique (O(n + m))
/// Works because both arrays are sorted
List<int> intersectionMergeSortSol(List<int> a1, List<int> a2) {
  List<int> res = [];
  int m = 0;
  int n = 0;

  while (m < a1.length && n < a2.length) {
    // Skip duplicate elements in first array to avoid repeated results
    if (m > 0 && a1[m] == a1[m - 1]) {
      m++;
      continue;
    }

    // Move pointer of smaller element forward
    if (a1[m] < a2[n]) {
      m++;
    } else if (a1[m] > a2[n]) {
      n++;
    }
    // If elements match, add to result and move both pointers
    else {
      res.add(a1[m]);
      m++;
      n++;
    }
  }

  return res;
}

/// Naive solution (O(n * m))
/// Checks each element of first array against second array
List<int> intersectionNaiveSol(List<int> a1, List<int> a2) {
  List<int> res = [];

  for (int i = 0; i < a1.length; i++) {
    // Skip duplicates in first array
    if (i > 0 && a1[i] == a1[i - 1]) {
      continue;
    }

    for (int j = 0; j < a2.length; j++) {
      // If match found, add once and break to avoid duplicates
      if (a1[i] == a2[j]) {
        res.add(a1[i]);
        break;
      }
    }
  }

  return res;
}
