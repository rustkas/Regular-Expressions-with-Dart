void main() {
  var validExpList = [
    RegExp('([Ff]irst|1st) [Ss]treet'),
    RegExp('([Ff]ir|1|)st [Ss]treet')
  ];

  var array = ['First street', 'First Street', 'first Street', '1st street', '1st Street'];

  for (var arrayItem in array) {
    for (var expItem in validExpList) {
      if (!expItem.hasMatch(arrayItem)) {
        throw Exception('$expItem is not valid pattern');
      }
    }
  }
  print('ok');

}
