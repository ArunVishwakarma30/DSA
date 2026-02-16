void main() {
  List<int> height = [1, 8, 6, 2, 5, 4, 8, 3, 7];

  print(height);

  print("${maxArea(height)}");
}

int maxArea(List<int> height) {
  int l = 0;
  int r = height.length - 1;

  int currentMax = 0;

  while (l < r) {
    int minVal = getMin(height[l], height[r]);

    int maxWaterCanHold = r - l;
    currentMax = getMax(currentMax, maxWaterCanHold * minVal);

    if (height[l] <= height[r]) {
      l++;
    } else {
      r--;
    }
  }

  return currentMax;
}

int getMin(int a, int b) => a < b ? a : b;
int getMax(int a, int b) => a > b ? a : b;
