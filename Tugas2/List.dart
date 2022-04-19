void main(List<String> args) {
  list(1, 10);
  var input = [
    ["001", "Akmhal Dimas", "Sleman", "Gaming"],
    ["002", "Muhammad Farhan", "Pariaman", "Membaca"],
    ["003", "John Doe", "Jakarta", "Wisata"]
  ];

  for (var i = 0; i < input.length; i++) {
    print(input[i][0] +
        " " +
        input[i][1] +
        " " +
        input[i][2] +
        " " +
        input[i][3]);
  }
}

void list(int awal, int akhir) {
  List<int> angka = [];
  for (; awal <= akhir; awal++) {
    angka.add(awal);
  }
  print(angka);
}
