import 'dart:async';

void main(List<String> args) async {
  print("Mulai Bernyanyi");
  print(await nyanyi());
}

Future<String> nyanyi() async {
  String order = await lirik();
  String order2 = await lirik2();
  String order3 = await lirik3();
  return order + order2 + order3;
}

Future<String> lirik() {
  return Future.delayed(
      Duration(seconds: 1), (() => "Pelangi-pelangi alangkah indahmu"));
}

Future<String> lirik2() {
  return Future.delayed(Duration(seconds: 2), (() => "\nMerah Kuning Hijau"));
}

Future<String> lirik3() {
  return Future.delayed(Duration(seconds: 1), (() => "\nDilangit yang biru"));
}
