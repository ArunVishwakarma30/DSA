class Solution {
  bool containsDuplicate(List<int> nums) {
    // return usingMap(nums);
    return usingSet(nums);
  }

  /// My approach
  bool usingMap(List<int> nums) {
    Map<int, int> numsMap = {};

    for (int i = 0; i < nums.length; i++) {
      if (numsMap.containsKey(nums[i])) {
        return true;
      } else {
        numsMap[nums[i]] = i;
      }
    }
    return false;
  }

  /// GPT approach

  bool usingSet(List<int> nums) {
    Set<int> numsSet = {};

    for (int i = 0; i < nums.length; i++) {
      if (!numsSet.add(nums[i])) return true;
    }

    return false;
  }
}
