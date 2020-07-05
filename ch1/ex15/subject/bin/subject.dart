void main() {
  var validExp = RegExp('^(From|Subject|Date): ');

  final string = '''
From: elvis@tabloid.org (The King)
Subject: be seein' ya around
Date: Mon, 23 Oct 2006 11:04:13
From: The Prez <president@whitehouse.gov>
Date: Wed, 25 Oct 2006 8:36:24
Subject: now, about your vote...
''';
  if (validExp.hasMatch(string)) {
    print('Pattern [${validExp.pattern}] is ok');
  } else {
    throw Exception('Pattern ${validExp.pattern} is not valid');
  }
}
