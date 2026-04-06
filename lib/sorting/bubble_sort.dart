/*
💡 Explanation of Bubble Sort:
1. Compare each pair of adjacent elements.
2. Swap them if they are in the wrong order.
3. Largest elements “bubble up” to the end of the array after each pass.
4. If no swaps happen during a pass, the array is already sorted—optimization stops further iterations.
5. This version prints the array after each iteration, so you can see how it gradually becomes sorted.
*/

void main() {
  List<int> mainArr = [5, 6, 1, 3];
  print("Main Arr : $mainArr");
  List<int> sortedArr = bubbleSort(mainArr);
  print("================");
  print("Sorted Arr : $sortedArr");
}

// Function to perform bubble sort on a list of integers
List<int> bubbleSort(List<int> arr) {
  // Outer loop for number of passes
  for (int i = 0; i < arr.length - 1; i++) {
    // Flag to check if any swapping happened in this pass
    // Helps optimize the algorithm for already sorted arrays
    bool isSwapped = false;

    // Inner loop to compare adjacent elements
    for (int j = 0; j < arr.length - 1; j++) {
      // If the current element is greater than the next element, swap them
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;

        // Mark that a swap has occurred
        isSwapped = true;
      }
    }

    // If no swapping occurred, the array is already sorted, break early
    if (isSwapped == false) {
      break;
    }

    // Print the array after each pass for visualization
    print("After ${i + 1} iteration arr is : $arr");
  }

  // Return the sorted array
  return arr;
}
