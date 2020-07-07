void main() {
  final regex1 = RegExp(r'[^\w]');
  final regex2 = RegExp(r'[\]\[$()*+.?{|]');
  final regex3 = RegExp(r'\W');
  final array = r'[$()*+.?{|]'.split('');

  for (var i = 0; i < array.length; i++) {
    final value = array[i];
    print('Value = $value');
    if (regex1.stringMatch(value) != value) {
      print('Pattern = ${regex1.pattern}');
      throw Exception('Wrong value is $value');
    } else if (regex2.stringMatch(value) != value) {
      print('Pattern = ${regex2.pattern}');
      throw Exception('Wrong value is $value');
    } else if (regex3.stringMatch(value) != value) {
      print('Pattern = ${regex3.pattern}');
      throw Exception('Wrong value is $value');
    }
  }
  print('ok');
}
