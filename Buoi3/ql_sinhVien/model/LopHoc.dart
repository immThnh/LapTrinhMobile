import 'SinhVien.dart';

class LopHoc {
  String _tenLop;
  List<SinhVien> _danhSachSinhVien;

  LopHoc(this._tenLop, this._danhSachSinhVien);

  String get tenLop => _tenLop;
  set tenLop(String value) {
    value.isEmpty ? _tenLop : _tenLop = value;
  }

  void addSinhVien(SinhVien sv) {
    _danhSachSinhVien.add(sv);
  }

  void xuatThongTin() {
    print("-------------------------");
    print("Ten lop: $_tenLop");
    print("Si so: ${_danhSachSinhVien.length}");
    print("------- Danh Sach -------");
    for (var sv in _danhSachSinhVien) {
      sv.xuatThongTin();
    }
    print("-------------------------");
  }
}

void main() {
  SinhVien v1 = SinhVien("Nguyen Van A", 8.0, 24, "1672386123", "");
  SinhVien v2 = SinhVien("Nguyen Van B", 7.0, 2000, "12312321", "");
  SinhVien v3 = SinhVien("Nguyen Van C", 6.0, 33, "235235235", "");
  LopHoc lop = LopHoc("21DTHE5", [v1, v2, v3]);
  lop.tenLop = "";
  lop.xuatThongTin();
}
