import 'bangun_datar.dart';

class lingkaran extends bangun_datar {
  double? _Jari_jari;
  final double phi = 3.14;

  lingkaran(double? Jari_jari) {
    this._Jari_jari = Jari_jari;
  }

  @override
  double Luas() {
    return _Jari_jari! * _Jari_jari! * phi;
  }

  @override
  double keliling() {
    return 2 * phi * _Jari_jari!;
  }
}
