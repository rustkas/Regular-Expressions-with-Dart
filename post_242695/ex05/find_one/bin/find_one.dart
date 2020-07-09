void main() {
  final regex = RegExp('neighbou?r');

  final array = ['neighbour', 'neighbor'];

  for (var item in array) {
    print(regex.stringMatch(item));
  }
}
