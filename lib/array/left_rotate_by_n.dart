void main() {
  //// Temp-array method.(Uses Auxilary space)
  /*int n = 5;
  print("Left rotate an Array By n $n");

  List<int> mainArray = [30, 5, 2];

  print("Main array is $mainArray");

  List<int> leftRotateAnArrayByn(List<int> arr, int num) {
    num = num % arr.length;

    /// Store first n ele in temp;
    List<int> temp = [];

    for (int i = 0; i < num; i++) {
      temp.add(arr[i]);
    }

    /// Shift elements after n to left
    for (int i = num; i < arr.length; i++) {
      arr[i - num] = arr[i];
    }

    /// Append the temp into arr
    for (int i = 0; i < temp.length; i++) {
      arr[arr.length - num + i] = temp[i];
    }

    return arr;
  }

  print("$n times rotated arr is ${leftRotateAnArrayByn(mainArray, n)}");*/

  //////////// Using Reversal Algorithm //////////////
  int n = 5;
  //   print("Left rotate an Array By n $n");

  List<int> mainArray = [30, 5, 2];

  print("Main array is $mainArray");

  /// Reverse an array
  List<int> reverse(List<int> arr, int start, int end) {
    while (start < end) {
      int temp = arr[start];
      arr[start] = arr[end];
      arr[end] = temp;
      start++;
      end--;
    }

    return arr;
  }

  List<int> leftRotateAnArrayByn(List<int> arr, int rotation) {
    rotation = rotation % arr.length;

    arr = reverse(arr, 0, rotation - 1);
    arr = reverse(arr, rotation, arr.length - 1);
    arr = reverse(arr, 0, arr.length - 1);

    return arr;
  }

  print("$n times rotated arr is ${leftRotateAnArrayByn(mainArray, n)}");
}
