void main() {
  final regex = RegExp(r'\d');
  final array = to10(0).toList();
  // print(array);
  for (var i = 0; i < array.length; i++) {
    final value = array[i].toString();
    // print('Value = $value, pattern = ${regex.pattern}');
    // print(regex.stringMatch(value));
    if (regex.stringMatch(value) != value) {
      throw Exception('Wrong value is $value');
    }
  }
  print('ok');
}

Iterable<int> to10(int n) sync* {
  if (n < 10) {
    yield n;
    yield* to10(n + 1);
  }
}
