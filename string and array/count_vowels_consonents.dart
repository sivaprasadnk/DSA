Map<String, int> countVowelsAndConsonants(String s) {
  Set<String> vowels = {'a', 'e', 'i', 'o', 'u'};
  int vowelCount = 0;
  int consonantCount = 0;

  for (var char in s.toLowerCase().runes) {
    String letter = String.fromCharCode(char);
    if (letter.contains(RegExp(r'[a-z]'))) {
      if (vowels.contains(letter)) {
        vowelCount++;
      } else {
        consonantCount++;
      }
    }
  }

  return {'vowels': vowelCount, 'consonants': consonantCount};
}

void main() {
  print(
    countVowelsAndConsonants("Flutter"),
  ); // Output: {vowels: 2, consonants: 5}
}
