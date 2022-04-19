void main(List<String> args) {
  Lingkaran lingkar = new Lingkaran();
  lingkar.setJari_jari = 7;
  print(lingkar.luas());
}

class Lingkaran {
  final double phi = 3.14;
  double? _Jari_jari;

  set setJari_jari(double? Jari_jari) {
    this._Jari_jari = Jari_jari;
  }

  double getJari_jari() {
    return _Jari_jari!;
  }

  double luas() {
    return _Jari_jari! * _Jari_jari! * phi;
  }
}
