void main() {
  final regex = RegExp(r'[$()*+.?{|]');
  const string = r'$()*+.?{|';
  final array = string.split('');
  for (var i = 0; i < array.length; i++) {
    final input = array[i];
    if (regex.stringMatch(input) != input) {
      throw Exception('Wrong value is [${input}]');
    }
  }
  print('ok');
}
