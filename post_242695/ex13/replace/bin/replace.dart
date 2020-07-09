/// Lazy search
void main() {
  final str = 'a "witch" and her "broom" is one';
  final regex = RegExp('".+?"');
  for (var item in regex.allMatches(str)) {
    print(item.group(0));
  }
}
