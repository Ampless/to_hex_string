import 'package:to_hex_string/to_hex_string.dart';
import 'package:tested/tested.dart';

void main() {
  tests(
      [
        (-1, 'ffffffffffffffff'),
        (16, '10'),
      ].map((x) => expectTestCase(() => x.$1.toHexString(), x.$2)),
      'unpadded');
  tests(
      [
        (-1, 'ffffffffffffffff'),
        (16, '0000000000000010'),
      ].map((x) => expectTestCase(() => x.$1.toHexString(pad: true), x.$2)),
      'padded');
}
