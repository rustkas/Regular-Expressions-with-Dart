import 'dart:math';

void main() {
  final exp1 = RegExp('[0123456789abcdefABCDEF]');
  final exp2 = RegExp('[0-9a-fA-F]');
  final exp3 = RegExp('[A-Fa-f0-9]');
  final exp4 = RegExp('[a-fA-F0-9]');

  final expList = [exp1, exp2, exp3, exp4];

  final random = Random();
  final arraySize = random.nextInt(10);
  final array = List<String>(arraySize);

  for (var i = 0; i < arraySize; i++) {
    array[i] = random.nextInt(pow(2, 32)).toRadixString(16);
  }

  for (var exp in expList) {
    print('Pattern: ${exp.pattern}');

    final sb = StringBuffer();
    for (var i = 0, item; i < arraySize; i++) {
      item = array[i];
      if (exp.hasMatch(item)) {
        sb.write('$item, ');
      } else {
        throw Exception('$item is not match');
      }
    }
    print('------------------------');

    var fullString = sb.toString();
    if (fullString.isNotEmpty) {
      fullString = fullString.substring(0, fullString.length - 2);
    }

    print(fullString);
    print('\n');
  }
}
