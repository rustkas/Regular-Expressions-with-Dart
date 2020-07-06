import 'dart:math';

void main() {
  var str = '''

cat
<h2>Header 2 cat</h2>
cat <h3>Header 3</h3>
<h4>Header 4</h4> cat
<h5>Header 5 cat</h5> 
<h6>Header 6</h6>
cat

''';

  final random = Random();
  // generate random text
  str = str * random.nextInt(10);
  // str = str1;
  var count = 0;
  final exp = RegExp(r'^',multiLine: true);
  final matches = exp.allMatches(str);
  for (var item in matches) {
    //print('${str.substring(item.start, item.end)}');
    count++;
  }
  print('------------------------');
  print('Count = $count');
}
