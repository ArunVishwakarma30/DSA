void main() {
  print("======= Minimum Consicutive Group Flips =======");

  List<int> mainArr = [1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1];

  print("Maia arr is $mainArr");

  //     print("Flipped arr indexes are ${getFlips(mainArr)}");
  print("Optimised flipped arr indexes are ${getFlipsOptimised(mainArr)}");
}

// Brute force (Not even proper solution)
List<int> getFlips(List<int> arr) {
  List<int> firstFlip = [];
  List<int> secondFlip = [];
  
  for (int i = 0; i < arr.length; i++) {
    //// Flip 1's
    if (arr[i] == 1) {
      firstFlip.add(i);
    }
    //// Flip 0's
    if (arr[i] == 0) {
      secondFlip.add(i);
    }
  }

  return firstFlip.length >= secondFlip.length ? secondFlip : firstFlip;
}

List<int> getFlipsOptimised(List<int> arr) {
  List<int> res = [];

  /// Find 2st group start index, cause in binary array there will always be lesser or same number for 2nd group

  int secondGropIndex = 0;

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] != arr[i - 1]) {
      secondGropIndex = i;
      break;
    }
  }

  for (int i = secondGropIndex; i < arr.length; i++) {
    if (arr[i] == arr[secondGropIndex]) {
      res.add(i);
    }
  }

  return res;
}
