void main() {
  List<int> a = [10, 10, 15, 20, 25, 30];

  List<int> result = getFirstAndLastElements(a);

  print("First and Last Elements: $result");
}

List<int> getFirstAndLastElements(List<int> inputList) {
  if (inputList.isEmpty) {
    throw ArgumentError("Input list must not be empty.");
  }

  int firstElement = inputList.first;
  int lastElement = inputList.last;

  return [firstElement, lastElement];
}
