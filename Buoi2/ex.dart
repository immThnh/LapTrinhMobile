// GPT ax^2 + bx + c = 0
import 'dart:io';
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0;
  do {
    stdout.write("Nhap he so a (a khac 0): ");
    String? temp = stdin.readLineSync();
    if (temp != null) {
      a = double.tryParse(temp) ?? 0;
    }

    if (a == 0) {
      print("He so a phai khac 0. Nhap lai!");
    }
  } while (a == 0);

  stdout.write("Nhap he so b: ");
  String? inputB = stdin.readLineSync();
  if (inputB != null) b = double.tryParse(inputB) ?? 0;

  stdout.write("Nhap he so c: ");
  String? inputC = stdin.readLineSync();
  if (inputC != null) c = double.tryParse(inputC) ?? 0;

  //Hien thi phuong trinh
  print("Phuong trinh: ${a}x^2 + ${b}x + $c = 0");

  //Tinh delta
  double delta = b * b - 4 * a * c;

  //GPT
  if (delta < 0)
    print("PT vo nghiem");
  else if (delta == 0) {
    double x = -b / (2 * a);
    x = double.parse(x.toStringAsFixed(2));
    print("Nghiem ke: x = $x");
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    x1 = double.parse(x1.toStringAsFixed(2));
    double x2 = (-b - sqrt(delta)) / (2 * a);
    x2 = double.parse(x2.toStringAsFixed(2));

    print("Phuong trinh co 2 nghiem la: x1 = $x1 va x2 = $x2");
  }
}
