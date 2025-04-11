int linearSearch(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return i; // Return the index of the found element
    }
  }
  return -1; // Return -1 if not found
}

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  int target = 30;
  print("Index of $target: ${linearSearch(numbers, target)}");
}
