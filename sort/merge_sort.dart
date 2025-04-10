void mergeSort(List<int> arr, int left, int right) {
  if (left < right) {
    int mid = left + (right - left) ~/ 2;

    // Recursively sort both halves
    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);

    // Merge the sorted halves
    merge(arr, left, mid, right);
  }
}

void merge(List<int> arr, int left, int mid, int right) {
  int leftSize = mid - left + 1;
  int rightSize = right - mid;

  List<int> leftArr = List<int>.filled(leftSize, 0);
  List<int> rightArr = List<int>.filled(rightSize, 0);

  // Copy data to temporary arrays
  for (int i = 0; i < leftSize; i++) {
    leftArr[i] = arr[left + i];
  }
  for (int j = 0; j < rightSize; j++) {
    rightArr[j] = arr[mid + 1 + j];
  }

  // Merge the temp arrays back into arr[left..right]
  int i = 0, j = 0, k = left;

  while (i < leftSize && j < rightSize) {
    if (leftArr[i] <= rightArr[j]) {
      arr[k] = leftArr[i];
      i++;
    } else {
      arr[k] = rightArr[j];
      j++;
    }
    k++;
  }

  // Copy remaining elements of leftArr, if any
  while (i < leftSize) {
    arr[k] = leftArr[i];
    i++;
    k++;
  }

  // Copy remaining elements of rightArr, if any
  while (j < rightSize) {
    arr[k] = rightArr[j];
    j++;
    k++;
  }
}

void main() {
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  mergeSort(numbers, 0, numbers.length - 1);
  print(numbers); // Output: [3, 9, 10, 27, 38, 43, 82]
}
