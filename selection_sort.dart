void main() {
  var list = [5, 3, 9, 6, 3, 8, 4, 2, 1, 6, 3, 1, 9, 1];
  print("before sort :$list");
  selectionSort(list);
  print("after sort :$list");
}

selectionSort(List a) {
  var n = a.length;
  for (var i = 0; i < n - 1; i++) {
    var minIndex = i;
    for (var j = i + 1; j < n; j++) {
      if (a[j] < a[minIndex]) {
        minIndex = j;
      }
    }
    if (a[minIndex] != a[i]) {
      var temp = a[minIndex];
      a[minIndex] = a[i];
      a[i] = temp;
    }
  }
}
