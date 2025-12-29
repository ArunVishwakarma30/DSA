List<int> deletionOperation(List<int> mainArr, int pos) {
  if (pos < 1 || pos > mainArr.length) {
    return mainArr;
  }
  List<int> newArr = mainArr;
  int ind = pos - 1;
  for (int i = ind; i < mainArr.length - 1; i++) {
    newArr[i] = mainArr[i + 1];
  }

  newArr.removeLast();
  return newArr;
}
