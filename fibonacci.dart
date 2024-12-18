void main() {
  var n = 10;
  print("fibonacci upto $n :${fibonacci(n)}");
}

List fibonacci(int n) {
  List a = [];
  for (var i = 0; i < n; i++) {
    if (i <= 1) {
      a.add(i);
    } else {
      a.add(a[i - 1] + a[i - 2]);
    }
  }
  return a;
}
