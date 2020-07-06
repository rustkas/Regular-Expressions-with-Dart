import 'dart:math';

void main() {
  final exp = RegExp('[0-9a-z]+[_!.?]', caseSensitive: true);
  print('Pattern: ${exp.pattern}');

  final literals = '_!.?'.split('');

  final random = Random();
  final arraySize = random.nextInt(10);
  final array = List<String>(arraySize + 1);
  print(' # ' * (arraySize));
  for (var i = 0; i <= arraySize; i++) {
    array[i] =
        '${random.nextInt(pow(2, 32)).toRadixString(16)}${literals[random.nextInt(literals.length - 1).abs()]}';
  }

  final sb = StringBuffer();
  for (var item in array) {
    if (exp.hasMatch(item)) {
      sb.write('$item, ');
    }
  }

  if (arraySize > 0) {
    var string = sb.toString();

    string = string.substring(0, string.length - 2);
    print(string);
  }
}
