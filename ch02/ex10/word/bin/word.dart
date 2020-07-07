import 'dart:math';

/// What is word symbol in Dart regular expression?
void main() {
  final regex1 = RegExp(r'\w');
  var regex2 = RegExp(r'[A-z0-9_]');
  var array = intToHex(0).toList();
  array.add('_');

  print(array);
  checkArray(array, regex1, regex2);

  regex2 = RegExp(r'[A-z0-9_[]');
  array = r'['.split('');
  checkArray(array, regex1, regex2);
  print('ok');
}

void checkArray(List<String> array, RegExp regex1, RegExp regex2) {
  for (var i = 0; i < array.length; i++) {
    final value = array[i];
    print(
        'Value = $value. Result1 = ${regex1.stringMatch(value)}. Result2 = ${regex2.stringMatch(value)}');
    if (regex1.stringMatch(value) != value) {
      throw Exception('Wrong value is $value');
    } else if (regex2.stringMatch(value) != value) {
      throw Exception('Wrong value is $value');
    }
  }
}

Random random = Random();
Iterable<String> intToHex(int n) sync* {
  if (n < 10) {
    final value = random.nextInt(16);
    yield value.toRadixString(16).toUpperCase();
    yield* intToHex(n + 1);
  }
}
