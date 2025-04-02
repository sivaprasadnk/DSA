int binarySearchIterative(List<int> arr, int target) {
  int left = 0, right = arr.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    if (arr[mid] == target) return mid;
    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}

void main() {
  List<int> numbers = [1, 3, 5, 7, 9, 11, 15];
  int target = 9;
  int index = binarySearchIterative(numbers, target);

  print(index != -1 ? "Element found at index $index" : "Element not found");
}
