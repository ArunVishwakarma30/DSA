void main() {
  //////////////////
  print("Left rotate an Array by 1");

  List<int> mainArray = [30, 5, 2];

  print("Main array is $mainArray");

  List<int> leftRotateAnArray(List<int> arr) {
    int firstEle = arr[0];

    for (int i = 1; i < arr.length; i++) {
      arr[i - 1] = arr[i];
    }

    arr[arr.length - 1] = firstEle;

    return arr;
  }

  print("Rotated arr is ${leftRotateAnArray(mainArray)}");
}
