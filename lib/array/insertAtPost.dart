List<int> insertAtPost(List<int> mainArr, int pos, int val) {
  if (pos < 1 || pos > mainArr.length) {
    return mainArr;
  }
  List<int> newArr = mainArr;
  int ind = pos - 1;
  for (int i = mainArr.length - 1; i > ind; i--) {
    newArr[i] = mainArr[i - 1];
  }
  newArr[ind] = val;
  return newArr;
}
