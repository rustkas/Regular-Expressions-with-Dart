void main() {
  final validExp = RegExp(
      r'\bhttp[-a-z0-9_.:]+//[az09_:@&?=+,.!/~*%$]*\.html?\b',
      caseSensitive: false,
      multiLine: true,
      unicode: true);
  const text = 'http://..../foo.html';

  var count = 0;
  for (var item in validExp.allMatches(text)) {
    print('${text.substring(item.start, item.end)}');
    count++;
  }
  print('• ' * count);
}
