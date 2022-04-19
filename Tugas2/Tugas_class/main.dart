import 'dart:io';

import 'lingkaran.dart';
import 'persegi.dart';

void main(List<String> args) {
  double? sisi, jari_jari;
  print("Menghitung Luas dan Keliling dari Persegi dan Lingkaran");
  stdout.write("Masukan Sisi Kotak : ");
  String? input = stdin.readLineSync();
  sisi = double.tryParse(input!);
  persegi kotak = new persegi(sisi);
  stdout.write("Luas Persegi : ");
  print(kotak.Luas());
  stdout.write("Keliling Persegi : ");
  print(kotak.keliling());
  stdout.write("\nMasukan Jari-jari Lingkaran : ");
  input = stdin.readLineSync();
  sisi = double.tryParse(input!);
  lingkaran lingkar = new lingkaran(sisi);
  stdout.write("Luas Lingkaran : ");
  print(lingkar.Luas());
  stdout.write("Keliling Lingkaran : ");
  print(lingkar.keliling());
}
