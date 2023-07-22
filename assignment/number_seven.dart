import 'dart:convert';

void main() {
  String jsonData = '''
  {
    "birthdays": [
      { "month": "May", "count": 3 },
      { "month": "May", "count": 5 },
      { "month": "November", "count": 2 },
      { "month": "December", "count": 1 },
      { "month": "December", "count": 4 },
      { "month": "December", "count": 2 }
    ]
  }
  ''';

  Map<String, dynamic> parsedData = jsonDecode(jsonData);
  List<Map<String, dynamic>> birthdays = List.from(parsedData['birthdays']);

  List allMonths = extractMonths(birthdays);
  Map<String, int> monthCounts = countBirthdaysInEachMonth(birthdays);

  print("Months of all the birthdays: $allMonths");
  print("Number of birthdays in each month: $monthCounts");

  String monthWithHighestBirthdays = findMonthWithHighestBirthdays(monthCounts);
  String monthWithLowestBirthdays = findMonthWithLowestBirthdays(monthCounts);

  print("Month with the highest birthdays: $monthWithHighestBirthdays");
  print("Month with the lowest birthdays: $monthWithLowestBirthdays");
}

List extractMonths(List<Map<String, dynamic>> birthdays) {
  return birthdays.map((birthday) => birthday['month']).toList();
}

Map<String, int> countBirthdaysInEachMonth(List<Map<String, dynamic>> birthdays) {
  Map<String, int> monthCounts = {};

  for (var birthday in birthdays) {
    String month = birthday['month'];
    int count = birthday['count'];

    if (monthCounts.containsKey(month)) {
      newMethod(monthCounts, month, count);
    } else {
      monthCounts[month] = count;
    }
  }

  return monthCounts;
}

int newMethod(Map<String, int> monthCounts, String month, int count) => monthCounts[month] = count;

String findMonthWithHighestBirthdays(Map<String, int> monthCounts) {
  return monthCounts.entries.reduce((a, b) => a.value > b.value ? a : b).key;
}

String findMonthWithLowestBirthdays(Map<String, int> monthCounts) {
  return monthCounts.entries.reduce((a, b) => a.value < b.value ? a : b).key;
}
