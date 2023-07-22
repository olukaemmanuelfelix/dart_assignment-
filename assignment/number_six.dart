void main() {
  List<int> inputList = [1, 2, 2, 3, 3, 4, 5, 5, 6];
  List<int> uniqueList = removeDuplicates(inputList);
  print("List without duplicates: $uniqueList");
}

List<int> removeDuplicates(List<int> list) {
  Set<int> uniqueElements = {};
  List<int> result = [];

  for (int element in list) {
    if (!uniqueElements.contains(element)) {
      uniqueElements.add(element);
      result.add(element);
    }
  }

  return result;
}
