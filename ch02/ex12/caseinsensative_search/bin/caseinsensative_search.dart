void main() {
  final regex = RegExp('test', caseSensitive: false);
  const input = 'TesT';
  if (regex.hasMatch(input)) {
    print('ok');
  }
}
