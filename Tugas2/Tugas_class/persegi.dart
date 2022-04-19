import 'bangun_datar.dart';

class persegi extends bangun_datar {
  double? _sisi;
  persegi(double? sisi) {
    this._sisi = sisi;
  }

  @override
  double Luas() {
    return _sisi! * _sisi!;
  }

  @override
  double keliling() {
    return _sisi! * 4;
  }
}
