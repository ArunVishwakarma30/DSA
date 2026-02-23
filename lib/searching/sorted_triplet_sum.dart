void main() {
  List<int> arr = [2, 4, 6, 9, 11]; // 19 ,
  // should return true cause 4 + 6 + 9 also if passed 7 return false

  bool f = false;
  int t = 19;
  outer:
  for (int i = 0; i < arr.length - 2; i++) {
    int s = i + 1;
    int e = arr.length - 1;
    while (s < e) {
      int currentSum = arr[i] + arr[s] + arr[e];

      if (currentSum == t) {
        f = true;
        break outer;
      } else if (currentSum < t) {
        s++;
      } else {
        e--;
      }
    }
  }

  print("Found $f");
}
