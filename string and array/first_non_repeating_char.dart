String? firstNonRepeatingCharacter(String s) {
  Map<String, int> count = {};

  for (var char in s.split('')) {
    count[char] = (count[char] ?? 0) + 1;
  }

  for (var char in s.split('')) {
    if (count[char] == 1) {
      return char;
    }
  }

  return null;
}

void main() {
  print(firstNonRepeatingCharacter("swiss")); // Output: "w"
}
