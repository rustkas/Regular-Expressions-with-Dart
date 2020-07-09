void main() {
  var regex = RegExp(r'^(\w+\s?)*$');
  regex = RegExp(r'^(\w+\s)*\w*$');
  regex = RegExp(r'^((?=(\w+))\2\s?)*$');
  var input =
      'An input string that takes a long time or even makes this regexp to hang!';

  // regex = RegExp(r'^(\d+)*$');

  // input = '012345678901234567890123456789!';

  // regex = RegExp(r'^(\d+)?$');

  // input = '012345678901234567890123456789!';

  print(regex.stringMatch(input));
}
