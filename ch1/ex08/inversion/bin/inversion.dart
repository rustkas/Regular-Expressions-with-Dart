import 'dart:math';

void main() {
// ignore values contanis number from 5 to 9 inclusive
  final expIgnore1 = RegExp('[^5-9]');
  final expIgnore2 = RegExp('[^3-5]');
  final expIgnore3 = RegExp('[^0-3]');

  final exp = RegExp('[0-9a-z]+[_!.?]', caseSensitive: true);
  print('Pattern: ${exp.pattern}');

  final literals = '_!.?'.split('');

  final random = Random();

  final expIgnore = [expIgnore1, expIgnore2, expIgnore3][random.nextInt(3)];
  print('Ignore pattern: ${expIgnore.pattern}');

  final arraySize = random.nextInt(10);
  final array = List<String>(arraySize + 1);
  print(' # ' * (arraySize));
  for (var i = 0; i <= arraySize; i++) {
    array[i] = '${random.nextInt(pow(2, 32)).toRadixString(16)}'
        '${literals[random.nextInt(literals.length - 1).abs()]}';
  }

  final sb = StringBuffer();
  for (var item in array) {
    if (exp.hasMatch(item) && expIgnore.hasMatch(item)) {
      sb.write('$item, ');
    }
  }

  if (sb.length > 2) {
    var string = sb.toString();

    string = string.substring(0, string.length - 2);
    print(string);
  }
}
