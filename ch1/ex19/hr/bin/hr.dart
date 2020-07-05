void main() {
  print(
      'Regular expression example: ${RegExp.escape(r'<HR +size *= *[0-9]+ */?>')}');

  final validExp = RegExp(r'<HR +(SIZE *= *[0-9]+)? */?>',
      caseSensitive: false, multiLine: true);

  const html = '''
    <html>
      <head></head>
      <body>
        <h1>It is Dart</h1>
        <hr size = 14>
        <h2>It is regular expressions</h2>
        <hr size = 8>
        <h3>It is very interesting!</h2>
        <hr />
      </body>
    </html>
  ''';
  if (validExp.hasMatch(html)) {
    print('ok');
  }
  for (var item in validExp.allMatches(html)) {
    print(html.substring(item.start, item.end));
  }
}
