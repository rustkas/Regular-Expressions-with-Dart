void main() {
  var validExpList = [
    // RegExp('Jeffrey|Jeffery'),
    // RegExp('Jeff(rey|ery)'),
    // RegExp('Jeff(re|er)y'),
    // RegExp('Jeff(rey|ery)'),
    RegExp('(Geoff|Jeff)(rey|ery)'),
    RegExp('(Geo|Je)ff(rey|ery)'),
    RegExp('(Geo|Je)ff(re|er)y'),
    RegExp('Jeffrey|Geoffery|Jeffery|Geoffrey')
  ];

  var array = ['Jeffrey', 'Jeffery', 'Geoffrey', 'Geoffery'];

  for (var arrayItem in array) {
    for (var expItem in validExpList) {
      try {
        if (!expItem.hasMatch(arrayItem)) {
          throw Exception('$expItem is not valid pattern');
        }
      } catch (_) {
        print('$arrayItem is not valid');
      }
    }
  }
  print('ok');
}
