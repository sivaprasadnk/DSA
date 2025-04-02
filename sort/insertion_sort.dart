void main() {
  var list = [5, 3, 9, 6, 3, 8, 4, 2, 1, 6, 3, 1, 9, 1];
  print("before sort :$list");
  insertionSort(list);
  print("after sort :$list"); // [1, 1, 1, 2, 3, 3, 3, 4, 5, 6, 6, 8, 9, 9]
}

insertionSort(List a) {
  for (var i = 1; i < a.length; i++) {
    var key = a[i];
    var j = i - 1;
    while (j >= 0 && a[j] > key) {
      a[j + 1] = a[j];
      j--;
    }
    a[j + 1] = key;
  }
}
