/*💡 Explanation of Insertion Sort
1. Start from the second element (index 1) and consider it as the key.
2. Compare the key with the elements before it (to its left).
3. If the key is smaller than the compared element, shift the larger element one position to the right.
4. Repeat the comparison and shifting until you find the correct position for the key.
5. Insert the key at its correct position.
6. Move to the next element and repeat the process until the entire array is sorted.
*/
void main() {
  List<int> mainArr = [10, 5, 8, 20, 2, 18];
  print("Main Arr : $mainArr");
  List<int> sortedArr = insertionSort(mainArr);
  print("================");
  print("Sorted Arr : $sortedArr");
}

List<int> insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    // Move elements of arr[0..i-1], that are greater than key,
    // to one position ahead of their current position
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }

  return arr;
}
