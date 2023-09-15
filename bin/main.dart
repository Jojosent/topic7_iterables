import 'dart:io';
import 'dart:math';

// Task 1
// void main() {
//   List<int> kk = [2, 3, 4, 5];
//   int y = kk[0];
//   for (int i = 1; i <= kk.length; i++) {
//     print(y);
//     y *= kk[i];
//   }
// }

// Task 2
// void main() {
//   final numbers = [2, 7, 1, 9, 4, 6, 8, 3, 5];
//   findMinMax(numbers);
// }

// void findMinMax(Iterable<int> numbers) {
//   if (numbers.isEmpty) {
//     print("The iterable is empty.");
//     return;
//   }

//   int min = numbers.first;
//   int max = numbers.first;

//   for (int i = 1; i <= numbers.length; i++) {
//     if (i < min) {
//       min = i;
//     }
//     if (i > max) {
//       max = i;
//     }
//   }
//   print("Minimum value: $min");
//   print("Maximum value: $max");
// }

// Task 3
// Iterable<double> infiniteRange(double start, double step) sync* {
//   double current = start;
//   while (true) {
//     yield current;
//     current += step;
//   }
// }

// void main() {
//   final start = 1.0;
//   final step = 0.5;

//   final values = infiniteRange(start, step).take(10);
//   for (final value in values) {
//     print(value);
//   }
// }

// Task 4
// Iterable<int> generateNumbers(List asd) sync* {
//   for (int i = 0; i < asd.length; i++) {
//     int t = asd[i];
//     if (t < 0) {
//       break;
//     } else {
//       yield t;
//     }
//   }
// }

// void main() {
//   List<int> asd = [1, 2, -3, 4];
//   final numbers = generateNumbers(asd);

//   for (var e in numbers) {
//     print(e);
//   }
// }

// Task 5
// Mynany ozim shygargan jokpyn

// Iterable<List<T>> permutations<T>(List<T> items, int count) sync* {
//   if (count <= 0 || count > items.length) {
//     return;
//   }

//   final int n = items.length;
//   final List<T> currentPermutation = List<T>.from(items.sublist(0, count));

//   List<int> indices = List<int>.generate(count, (index) => index);

//   yield List<T>.from(currentPermutation);

//   while (true) {
//     int i = count - 1;
//     while (i >= 0 && indices[i] == n - count + i) {
//       i--;
//     }

//     if (i == -1) {
//       break;
//     }

//     indices[i]++;

//     for (int j = i + 1; j < count; j++) {
//       indices[j] = indices[j - 1] + 1;
//     }

//     for (int k = 0; k < count; k++) {
//       currentPermutation[k] = items[indices[k]];
//     }

//     yield List<T>.from(currentPermutation);
//   }
// }

// void main() {
//   final elements = [1, 2, 3, 4, 5];
//   final count = 2;

//   final result = permutations(elements, count);

//   for (final permutation in result) {
//     print(permutation);
//   }
// }

// Task 6

// String compressString(String input) {
//   if (input == null || input.isEmpty) {
//     return input;
//   }

//   StringBuffer compressed = StringBuffer();
//   int count = 1;

//   for (int i = 1; i < input.length; i++) {
//     if (input[i] == input[i - 1]) {
//       count++;
//     } else {
//       compressed.write(input[i - 1]);
//       if (count > 1) {
//         compressed.write(count.toString());
//       }
//       count = 1;
//     }
//   }

//   compressed.write(input[input.length - 1]);
//   if (count > 1) {
//     compressed.write(count.toString());
//   }

//   return compressed.toString();
// }

// void main() {
//   final input = "aaabbbbcccddeee";
//   final compressed = compressString(input);
//   print("Compressed String: $compressed");
// }

// Task 7
// void main() {
//   int number = 15;
//   for (int i = 1; i <= number; i++) {
//     if (i % 3 == 0 && i % 5 == 0) {
//       print('FizzBuzz');
//     } else if (i % 3 == 0) {
//       print('Fizz');
//     } else if (i % 5 == 0) {
//       print('Buzz');
//     } else {
//       print(i);
//     }
//   }
// }

// Task 8
// void main() {
//   int startYear = 2000;
//   int endYear = 2150;

//   for (int year = startYear; year <= endYear; year++) {
//     DateTime christmasDate = DateTime(year, 12, 25);
//     if (christmasDate.weekday == DateTime.sunday) {
//       print("December 25, $year is a Sunday.");
//     }
//   }
// }

// Task 9
// import 'dart:math';
// void main() {
//   List<int> digits = [1, 2, 3, 4]; // Replace these digits with your own

//   List<List<int>> permutations = generatePermutations(digits);
//   String latestTime = findLatestTime(permutations);

//   if (latestTime.isNotEmpty) {
//     print("The latest valid time is: $latestTime");
//   } else {
//     print("No valid time can be formed.");
//   }
// }

// List<List<int>> generatePermutations(List<int> digits) {
//   List<List<int>> permutations = [];

//   void permute(List<int> current, List<int> remaining) {
//     if (remaining.isEmpty) {
//       permutations.add([...current]);
//       return;
//     }

//     for (int i = 0; i < remaining.length; i++) {
//       List<int> newCurrent = [...current, remaining[i]];
//       List<int> newRemaining = List.from(remaining)..removeAt(i);
//       permute(newCurrent, newRemaining);
//     }
//   }

//   permute([], digits);
//   return permutations;
// }

// String findLatestTime(List<List<int>> permutations) {
//   String latestTime = "";

//   for (List<int> perm in permutations) {
//     int hours = perm[0] * 10 + perm[1];
//     int minutes = perm[2] * 10 + perm[3];

//     if (hours < 24 && minutes < 60) {
//       String time = "${perm[0]}${perm[1]}:${perm[2]}${perm[3]}";
//       if (time.compareTo(latestTime) > 0) {
//         latestTime = time;
//       }
//     }
//   }

//   return latestTime;
// }

// Task 10
// List<int> shortestDistances(String inputString, String targetChar) {
//   List<int> distances = List<int>.filled(inputString.length, -1);

//   int targetIndex = -1;
//   int lastTargetIndex = -1;

//   for (int i = 0; i < inputString.length; i++) {
//     if (inputString[i] == targetChar) {
//       targetIndex = i;

//       if (lastTargetIndex != -1) {
//         distances[i] = i - lastTargetIndex;
//       }

//       lastTargetIndex = i;
//     }

//     if (lastTargetIndex != -1 &&
//         (distances[i] == -1 || i - lastTargetIndex < distances[i])) {
//       distances[i] = i - lastTargetIndex;
//     }
//   }

//   lastTargetIndex = -1;
//   for (int i = inputString.length - 1; i >= 0; i--) {
//     if (inputString[i] == targetChar) {
//       targetIndex = i;

//       if (lastTargetIndex != -1) {
//         distances[i] = lastTargetIndex - i;
//       }

//       lastTargetIndex = i;
//     }

//     if (lastTargetIndex != -1 &&
//         (distances[i] == -1 || lastTargetIndex - i < distances[i])) {
//       distances[i] = lastTargetIndex - i;
//     }
//   }

//   return distances;
// }

// void main() {
//   String inputString = "abacabadabacaba";
//   String targetChar = "b";

//   List<int> distances = shortestDistances(inputString, targetChar);

//   print("Shortest distances to '$targetChar': $distances");
// }

// Task 11

// int maxLengthOfSubstringWithSameChars(String inputString) {
//   if (inputString.isEmpty) {
//     return 0;
//   }

//   int maxLength = 1;
//   int currentLength = 1;

//   for (int i = 1; i < inputString.length; i++) {
//     if (inputString[i] == inputString[i - 1]) {
//       currentLength++;
//     } else {
//       currentLength = 1;
//     }

//     if (currentLength > maxLength) {
//       maxLength = currentLength;
//     }
//   }

//   return maxLength;
// }

// void main() {
//   String inputString = "aaabbccccdd";

//   int maxLength = maxLengthOfSubstringWithSameChars(inputString);

//   print("Maximum length of substring with same characters: $maxLength");
// }

// Task 12

// List<int> findTwoElementsWithSum(List<int> numbers, int targetSum) {
//   Map<int, int> seen = {};

//   for (int i = 0; i < numbers.length; i++) {
//     int complement = targetSum - numbers[i];

//     if (seen.containsKey(complement)) {
//       return [numbers[i], complement];
//     }

//     seen[numbers[i]] = i;
//   }

//   return [];
// }

// void main() {
//   List<int> numbers = [2, 7, 11, 15, 6, 3];
//   int targetSum = 9;

//   List<int> result = findTwoElementsWithSum(numbers, targetSum);

//   if (result.isNotEmpty) {
//     print(
//         "The first two elements with sum $targetSum are: ${result[0]} and ${result[1]}");
//   } else {
//     print("No such elements found.");
//   }
// }

// Task 13
// Ozim Shygardym
// void main() {
//   List<int> ll = [4, 2, 9, 7, 5, 11];
//   ll.sort();
//   var r = (ll[ll.length - 1]) - (ll[ll.length - 2]);
//   print("diference between to big numbers $r");
// }
