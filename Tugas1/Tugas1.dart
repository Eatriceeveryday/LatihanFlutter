import 'dart:io';

void main(List<String> args) {
  String pertama = "Flutter";
  String kedua = "is";
  String ketiga = "Awesome";

  print(pertama + " " + kedua + " " + ketiga);

  String kalimat = "Belajar Flutter";
  print("\n" + kalimat[2] + kalimat[3]);
  stdout.write("Kata 1 : ");
  for (var i = 0; i < 7; i++) {
    stdout.write(kalimat[i]);
  }

  var panjang = kalimat.length;

  stdout.write("\nKata 2 : ");
  for (var i = 8; i < panjang; i++) {
    stdout.write(kalimat[i]);
  }

  print("");

  stdout.write("Masukan Nama Depan : ");
  String? nd = stdin.readLineSync();

  stdout.write("Masukan Nama Belakang : ");
  String? nb = stdin.readLineSync();

  stdout.write(nd);
  stdout.write(" ");
  stdout.write(nb);

  print("");

  for (var i = 0; i < 5; i++) {
    for (var a = 0; a < i; a++) {
      stdout.write("*");
    }
    print("");
  }

  print("");

  for (var i = 1; i <= 20; i++) {
    if (i % 3 == 0) {
      stdout.write(i);
      stdout.write("- Skip\n");
    } else if (i % 2 == 0) {
      stdout.write(i);
      stdout.write("- Genap\n");
    } else {
      stdout.write(i);
      stdout.write("- Ganjil\n");
    }
  }

  print(" ");

  selamat_malam();

  print(" ");

  out("Farhan", "Baca Buku");
}

void selamat_malam() {
  print("selamat Malam");
}

void out(String nama, String Hobby) {
  print("Nama Saya " + nama + ",saya memiliki hobi " + Hobby);
}
