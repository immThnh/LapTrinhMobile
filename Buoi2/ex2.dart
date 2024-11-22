import "dart:io";
import "dart:math";

void main() {
  /**
   * Viet chuong trinh tinh tong cac uoc so cua 1 so nguyen duoc nhap tu ban phim ( n > = 1)
   */

  int n = 0;
  do {
    stdout.write("Nhap so nguyen n >= 1: ");
    String? temp = stdin.readLineSync();

    if (temp == null) {
      print("Du lieu khong hop le, Nhap Lai!");
    } else {
      n = int.tryParse(temp) ?? 0;
    }
  } while (n < 1);

  int sum = 0;
  int sqrtN = sqrt(n).toInt();
  for (int i = 1; i <= sqrtN; i++) {
    int uoc = n % i;
    if (uoc == 0) {
      sum += i;
      if (i != n ~/ i) {
        sum += n ~/ i;
      }
    }
  }
  print("Tong uoc so: $sum");
}
