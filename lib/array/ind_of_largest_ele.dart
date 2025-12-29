void main() {
  print("This is ind_of_largest_ele.dart file");

  ///////////////// Index of the largest element in an array
  List<int> input = [0, 0, 0, 0, 0]; // 20

  print("Input : $input");

  int findInd(List<int> arr) {
    int ind = 0;
    int maxNum = 0;

    for (int i = 0; i < arr.length; i++) {
      if (arr[i] > maxNum) {
        maxNum = arr[i];
        ind = i;
      }
    }

    return ind;
  }

  print("out : ${findInd(input)}");
}
