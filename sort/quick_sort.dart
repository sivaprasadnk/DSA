void quickSort(List<int> arr) {
  int low = 0, high = arr.length - 1;
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high]; // Choosing last element as pivot
  int i = low - 1; 

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      // Swap
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  // Swap pivot with element at i+1
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1;
}

void main() {
  List<int> numbers = [10, 7, 8, 9, 1, 5];
  quickSort(numbers);
  print(numbers); // Output: [1, 5, 7, 8, 9, 10]
}
