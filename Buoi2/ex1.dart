import 'dart:io';

String process(int soNguyen) {
  if (soNguyen <= 0) return "";

  return process(soNguyen ~/ 2) + (soNguyen % 2).toString();
}

void main() {
  /*
    Viet chuong trinh chuyen doi 1 so nguyen (n >= 1) duoc nhap tu ban phim thanh so nhi phan
  */

  int n = 0;
  do {
    print("Nhap so nguyen n >= 1: ");
    String? temp = stdin.readLineSync();
    if (temp == null) {
      print("Du lieu khong hop le. Nhap lai!");
    } else {
      n = int.tryParse(temp) ?? 0;
    }
    print(temp);
  } while (n < 1);

  String result = process(n);

  print(result);
}
