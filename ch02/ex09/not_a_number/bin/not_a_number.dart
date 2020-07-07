import 'dart:math';

void main() {
  final regex1 = RegExp(r'[^\d]');
final regex2 = RegExp(r'\D');
  final array = intToHex(0).toList();
  print(array);
  for (var i = 0; i < array.length; i++) {
    final value = array[i];
    if (regex1.stringMatch(value) != value || regex2.stringMatch(value) != value) {
      throw Exception('Wrong value is $value');
    }
  }
  print('ok');
}

Random random = Random();
Iterable<String> intToHex(int n) sync* {
  if (n < 10) {
    int value;
    do {
      value = random.nextInt(16);
    } while (value < 10);

    yield value.toRadixString(16).toUpperCase();
    yield* intToHex(n + 1);
  }
}
