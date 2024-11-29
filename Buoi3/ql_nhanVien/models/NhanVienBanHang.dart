import "./NhanVien.dart";

class Nhanvienbanhang extends NhanVien {
  int _doanhSo;
  double _tiLe;

  Nhanvienbanhang(
      String maNV, String hoTen, int luongCB, int this._doanhSo, this._tiLe)
      : super(maNV, hoTen, luongCB);

  int get doanhSo => _doanhSo;
  double get title => _tiLe;

  set doanhSo(int value) => value <= 0 ? _doanhSo : _doanhSo = value;
  set tiLe(double value) => value <= 0 ? _tiLe : _tiLe = value;

  @override
  int tinhLuong() {
    return luongCB + (_doanhSo * _tiLe).toInt();
  }

  @override
  void xuatThongTin() {
    super.xuatThongTin();
    print("Doanh so: $_doanhSo");
    print("Ti le: $_tiLe");
    print("-------------------------------------------------");
  }
}
