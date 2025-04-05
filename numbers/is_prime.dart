bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void main() {
  print(isPrime(11)); // true
  print(isPrime(10)); // false
}
