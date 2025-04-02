int? findSecondDuplicate(List<int> nums) {
  Set<int> seen = {};
  int count = 0;

  for (int num in nums) {
    if (seen.contains(num)) {
      count++;
      if (count == 2) return num; // Second duplicate found
    } else {
      seen.add(num);
    }
  }

  return null; // No second duplicate found
}

void main() {
  List<int> nums = [3, 1, 4, 2, 5, 3, 6, 2];
  int? result = findSecondDuplicate(nums);

  if (result != null) {
    print('Second duplicate: $result');
  } else {
    print('No second duplicate found');
  }
}
