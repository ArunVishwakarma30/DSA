void main() {
  //////// Naive Approach ////////
  /*
  print("Move zeros to the end");

  List<int> mainArr = [10, 0, 20, 30, 0, 0, 30];
  print("Main arr : $mainArr");

  List<int> moveZerosToEnd(List<int> arr) {
    List<int> result = [];
    int count = 0;

    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == 0) {
        count++;
      } else {
        result.add(arr[i]);
      }
    }

    for (int i = 0; i < count; i++) {
      result.add(0);
    }

    return result;
  }

  print("Zero moved : ${moveZerosToEnd(mainArr)}");*/
  //////// Optimised Approach ////////
  print("Move zeros to the end");

  List<int> mainArr = [0, 0, 20, 30, 0, 0, 30];
  print("Main arr : $mainArr");

  List<int> moveZerosToEnd(List<int> arr) {
    int nonZeroEle = 0;

    for (int i = 0; i < arr.length; i++) {
      if (arr[i] != 0) {
        int temp = arr[i];
        arr[i] = arr[nonZeroEle];
        arr[nonZeroEle] = temp;
        nonZeroEle++;
      }
    }
    return arr;
  }

  print("Zero moved : ${moveZerosToEnd(mainArr)}");
}
