int recursiveBinarySearch(List<int> arr, int left, int right, int target) {
  if (left > right) return -1;

  int mid = left + (right - left) ~/ 2;

  if (arr[mid] == target) return mid;
  if (arr[mid] < target) return recursiveBinarySearch(arr, mid + 1, right, target);
  return recursiveBinarySearch(arr, left, mid - 1, target);
}

void main() {
  List<int> numbers = [5, 10, 15, 20, 25, 30];
  int target = 15;
  print("Index of $target: ${recursiveBinarySearch(numbers, 0, numbers.length - 1, target)}");
}
