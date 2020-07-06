void main() {
  final validExp = RegExp(
      'a*((ab)*|b*)',
      caseSensitive: false);
  const text = 'а ххх се хххххх ci ххх d';

  var count = 0;
  for (var item in validExp.allMatches(text)) {
    print('${text.substring(item.start, item.end)}');
    count++;
  }
  print('• ' * count);
}

