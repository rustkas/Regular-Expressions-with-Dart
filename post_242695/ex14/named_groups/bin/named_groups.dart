void main() {
  final regex = RegExp('(?<year>[0-9]{4})-(?<month>[0-9]{2})-(?<day>[0-9]{2})');
  final str = '2019-04-30';
  for (var item in regex.allMatches(str)) {
    for (var itemJ in item.groupNames) {
      print('${itemJ}: ${item.namedGroup(itemJ)}');
    }
  }
}
