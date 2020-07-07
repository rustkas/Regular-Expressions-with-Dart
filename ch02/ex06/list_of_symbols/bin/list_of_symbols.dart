void main() {
  final regex1 = RegExp('[A-z]');
  final regex2 = RegExp(r'[A-Z\[\\\]\^_`a-z]');
  print(regex1.pattern);
  print(regex2.pattern);

  print(regex1.stringMatch('\\') == '\\');
  print(regex1.stringMatch('^') == '^');
  print(regex1.stringMatch('_') == '_');
  print(regex1.stringMatch('a') == 'a');
  print(regex1.stringMatch('`') == '`');
  print(regex1.hashCode == regex2.hashCode);

// final regex3 = RegExp('[z-A]');
}

