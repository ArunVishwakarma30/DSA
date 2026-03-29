class Solution {
  String longestCommonPrefix(List<String> strs) {
    // return usingSortMethod(strs);
    return withoutUsingSort(strs);
  }

  String withoutUsingSort(List<String> strs) {
    if (strs.isEmpty) return '';

    String prefix = strs[0];

    for (int i = 1; i < strs.length; i++) {
      while (!strs[i].startsWith(prefix)) {
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix == '') return '';
      }
    }

    return prefix;
  }

  String usingSortMethod(List<String> strs) {
    ///// Using Sort method
    if (strs.isEmpty) return '';
    String ch = '';
    strs.sort();
    int ind = 0;
    String firstEle = strs.first;
    String lastEle = strs.last;

    while (ind < firstEle.length &&
        ind < lastEle.length &&
        firstEle[ind] == lastEle[ind]) {
      ch += firstEle[ind];
      ind++;
    }
    return ch;
  }
}
