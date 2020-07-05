import 'dart:io';

void main() {
  var result;
  {
    final file = File('Marvel-names.txt');
    if (!file.existsSync()) {
      print('File ${file.path} is not exists');
      return;
    }
    final strUtf8 = file.readAsBytesSync();
    final s = String.fromCharCodes(strUtf8);
    
    final exp = RegExp('a[^a]');
    final sb = StringBuffer();
    ;
    for (var item in exp.allMatches(s)) {
      sb.write('${item.group(0)}, ');
    }
    result = sb.toString();
  }

  if (result != null && result.length > 2) {
    result = result.substring(0, result.length - 2);
    print(result);
  }
}
