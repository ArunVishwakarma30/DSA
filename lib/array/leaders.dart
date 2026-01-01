void main() {
  List<int> mainArray = [7, 10, 4, 10, 6, 5, 2]; // O/P : 10, 6, 5, 2

  print("Main array is $mainArray");

  List<int> findLeaders(List<int> arr) {
    List<int> leaders = [];

    for (int i = arr.length - 1; i >= 0; i--) {
      bool isLead = true;
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[j] >= arr[i]) {
          isLead = false;
          break;
        }
      }
      if (isLead) {
        leaders.insert(0, arr[i]);
      }
    }

    //     leaders.add(arr[arr.length - 1]);
    return leaders;
  }

  print("Leaders in an array ${findLeaders(mainArray)}");
}
