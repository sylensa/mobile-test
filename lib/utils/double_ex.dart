extension DisplayDouble on num {
  String display() {
    if (remainder(1) == 0) {
      return toInt().toString();
    }
    return toStringAsFixed(1);
  }
}
