void main() {
  final regexs = [
    RegExp(r'\d+'),
    RegExp(r'\d+'),
    RegExp(r'\d*'),
    RegExp(r'\d*')
  ];

  final array = ['123', '1', '23', '45'];

  regexs.forEach((element) {
    for (var item in array) {
      print(element.stringMatch(item));
    }
  });
}
