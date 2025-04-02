void main() {
  var list = [8, 9, 5, 3, 1, 8, 9, 2, 1];
  print("before sorting :$list");

  bubbleSort(list);
  print("after sorting :$list");
}

bubbleSort(List a) {
  for (var i = 0; i < a.length - 1; i++) {
    for (var j = 0; j < a.length - i - 1; j++) {
      if (a[j] > a[j + 1]) {
        var temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      }
    }
  }
}
