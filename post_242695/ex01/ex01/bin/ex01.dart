void main() {
  // console.log(/[0123456789]/.test("in 1992"));
  final regex = RegExp('[0123456789]+');
  var input = 'in 1992 1992';
  print(regex.stringMatch(input));

  final regex2 = RegExp('[0-9]+');
  print(regex2.stringMatch(input));
}
