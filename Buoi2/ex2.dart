import "dart:io";

void main() {
  /**
   * Viet chuong trinh tinh tong cac uoc so cua 1 so nguyen duoc nhap tu ban phim ( n > = 1)
   */

  int n = 0;
  do {
    print("Nhap so nguyen n >= 1: ");
    String? temp = stdin.readLineSync();
    if (temp == null) {
      print("Du lieu khong hop le, Nhap Lai!");
    } else {
      n = int.tryParse(temp) ?? 0;
    }
  } while (n < 1);

  int sum = 1;
  for (int i = 2; i <= n; i++) {
    int uoc = n % i;
    if (uoc == 0) {
      sum += i;
    }
  }
  print("Tong uoc so: $sum");
}
