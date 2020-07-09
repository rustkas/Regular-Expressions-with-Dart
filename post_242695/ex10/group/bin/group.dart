void main() {
  final regex = RegExp(r'bad(ly)?');
  final input = "bad'";

  var list = List<RegExpMatch>.of(regex.allMatches(input));
  var list1 = List<String>.of(list.map((item) => item.group(0)));
  for (var item in list1) {
    print(item);
  }
}
