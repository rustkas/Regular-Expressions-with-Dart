void main() {
  var validExpList = [
    RegExp('gr[ae]y'),
    RegExp('grey|gray'),
    RegExp('gr(e|a)y')
  ];

  var array = ['grey', 'gray'];

  for (var arrayItem in array) {
    for (var expItem in validExpList) {
      if (!expItem.hasMatch(arrayItem)) {
        throw Exception('$expItem is not valid pattern');
      }
    }
  }
  print('ok');

  var invalidExp = RegExp('gr[a|e]y');
  if (invalidExp.hasMatch('gr|y')) {
    print('Pattern [${invalidExp.pattern}] is invalid');
  }
}
