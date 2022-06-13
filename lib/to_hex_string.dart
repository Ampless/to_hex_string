library to_hex_string;

extension ToHexString on int {
  String toHexString({bool pad = false}) {
    final i = this < 0
        ? BigInt.from(this).toUnsigned(64).toRadixString(16)
        : toRadixString(16);
    return pad ? i.padLeft(16, '0') : i;
  }
}
