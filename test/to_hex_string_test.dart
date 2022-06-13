import 'package:to_hex_string/to_hex_string.dart';
import 'package:test/test.dart';

void main() {
  group(
      'unpadded',
      () => <int, String>{
            -1: 'ffffffffffffffff',
            16: '10',
          }.forEach((k, v) =>
              test('$k', () => expect(v, k.toHexString(pad: false)))));
  group(
      'padded',
      () => <int, String>{
            -1: 'ffffffffffffffff',
            16: '0000000000000010',
          }.forEach(
              (k, v) => test('$k', () => expect(v, k.toHexString(pad: true)))));
}
