import 'dart:math';

/// Count header
void main() {
  var str = '''
<h1>Header 1</h1>
<h2>Header 2</h2>
<h3>Header 3</h3>
<h4>Header 4</h4>
<h5>Header 5</h5>
<h6>Header 6</h6>
''';
  final random = Random();
  // generate random text
  str = str * random.nextInt(100);
  var count = 0;
  final exp = RegExp('<[hH][123456]');
  final matches = exp.allMatches(str);
  for (var item in matches) {
    print(str.substring(item.start + 1, item.end));
    count++;
  }
  print('------------------------');
  print('Count = $count');
}
