/*💡 Explanation of Selection Sort:
1. Start at the first element and assume it’s the minimum.
2. Scan the rest of the array to find a smaller element.
3. Swap the smallest found element with the current element.
4. Repeat for all positions until the array is sorted.
*/
void main() {
  List<int> mainArr = [10, 5, 8, 20, 2, 18];
  print("Main Arr : $mainArr");
  List<int> sortedArr = selectionSort(mainArr);
  print("================");
  print("Sorted Arr : $sortedArr");
}

// Function to perform selection sort on a list of integers
List<int> selectionSort(List<int> arr) {
  // Loop through each element in the array
  // Here we can also use i < arr.length, but since the last element will already be in place after the second last iteration, we can stop at arr.length - 1
  for (int i = 0; i < arr.length - 1; i++) {
    int minInd = i; // Assume the current index 'i' is the minimum

    // Inner loop to find the smallest element in the remaining unsorted part
    for (int j = i; j < arr.length; j++) {
      // If we find an element smaller than the current minimum, update minInd
      if (arr[minInd] > arr[j]) {
        minInd = j;
      }
    }

    // Swap the smallest element found with the element at index 'i'
    int temp = arr[minInd];
    arr[minInd] = arr[i];
    arr[i] = temp;
  }

  // Return the sorted array
  return arr;
}
