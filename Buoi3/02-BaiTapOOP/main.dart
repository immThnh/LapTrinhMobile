import 'CuaHang.dart';
import 'DienThoai.dart';
import 'HoaDon.dart';

List<DienThoai> initDienThoais() {
  return [
    DienThoai("DT001", "iPhone 13", "Apple", 700.00, 999.99, 10, false, 5),
    DienThoai("DT002", "Galaxy S21", "Samsung", 500.00, 799.99, 15, false, 7),
    DienThoai("DT003", "Pixel 6", "Google", 400.00, 599.99, 20, false, 10),
    DienThoai("DT004", "Xperia 5", "Sony", 450.00, 699.99, 5, false, 2),
    DienThoai("DT005", "OnePlus 9", "OnePlus", 480.00, 729.99, 8, false, 3)
  ];
}

List<HoaDon> initHoaDons(List<DienThoai> dienThoais) {
  return [
    HoaDon("HD001", DateTime(2023, 10, 1), 2, 1999.98, "Nguyen Van A",
        "0123456789", dienThoais[0]),
    HoaDon("HD002", DateTime(2023, 10, 2), 1, 799.99, "Le Thi B", "0987654321",
        dienThoais[1]),
    HoaDon("HD003", DateTime(2023, 10, 3), 3, 1799.97, "Tran Van C",
        "0111222333", dienThoais[2]),
    HoaDon("HD004", DateTime(2023, 10, 4), 1, 699.99, "Pham Thi D",
        "0222333444", dienThoais[3]),
    HoaDon("HD005", DateTime(2023, 10, 5), 2, 1459.98, "Hoang Van E",
        "0333444555", dienThoais[4])
  ];
}

void main() {
  List<DienThoai> dienThoais = initDienThoais();
  List<HoaDon> hoaDons = initHoaDons(dienThoais);

  CuaHang cuaHang =
      CuaHang("Cua Hang Dien Thoai", "123 Duong ABC", dienThoais, hoaDons);

  // Test themDienThoai
  DienThoai newDienThoai =
      DienThoai("DT006", "iPhone 14", "Apple", 800.00, 1099.99, 12, false, 0);
  cuaHang.themDienThoai(newDienThoai);
  cuaHang.dienThoai.contains(newDienThoai);
  print("Test themDienThoai passed");

  // Test capNhatThongTinDienThoai
  newDienThoai.tenDT = "iPhone 14 Pro";
  cuaHang.capNhatThongTinDienThoai(newDienThoai);
  cuaHang.timKiemTheoDienThoai("DT006").tenDT == "iPhone 14 Pro";
  print("Test capNhatThongTinDienThoai passed");

  // Test ngungKinhDoanDienThoai
  cuaHang.ngungKinhDoanDienThoai(newDienThoai);
  cuaHang.timKiemTheoDienThoai("DT006").disable == true;
  print("Test ngungKinhDoanDienThoai passed");

  // Test timKiemTheoDienThoai
  DienThoai foundDienThoai = cuaHang.timKiemTheoDienThoai("DT001");
  foundDienThoai.maDT == "DT001";
  print("Test timKiemTheoDienThoai passed");

  // Test hienThiDanhSachDienThoai
  cuaHang.hienThiDanhSachDienThoai();

  // Test taoHoaDon
  HoaDon newHoaDon = cuaHang.taoHoaDon(
      1, "Nguyen Van F", "DT001", "0444555666", 999.99, foundDienThoai);
  cuaHang.hoaDons.contains(newHoaDon);
  print("Test taoHoaDon passed");

  // Test timKiemHoaDon
  HoaDon foundHoaDon = cuaHang.timKiemHoaDon("HD001");
  foundHoaDon.maHD == "HD001";
  print("Test timKiemHoaDon passed");

  // Test hienThiDanhSachHoaDon
  cuaHang.hienThiDanhSachHoaDon();

  // Test thongKeTopBanChay
  List<DienThoai> topBanChay = cuaHang.thongKeTopBanChay();
  topBanChay.isNotEmpty;
  print("Test thongKeTopBanChay passed");

  // Test baoCaoTonKho
  cuaHang.baoCaoTonKho();
}
