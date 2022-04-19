void main(List<String> args) {
  future();
}

Future<void> future() {
  return Future.delayed(Duration(seconds: 3), (() {
    print("Nama");
    print("saya");
    print("Muhammad");
    print("Farhan");
  }));
}
