void main() {
  final validExp = RegExp(r'([A-Za-z]+)?([0-9]+)? +\1\2',
      caseSensitive: false, multiLine: true, unicode: true);
  const text = 'test test 12 12 23 56 23';

  var count = 0;
  for (var item in validExp.allMatches(text)) {
    print('${text.substring(item.start, item.end)}');
    count++;
  }
  print('• ' * count);
}
