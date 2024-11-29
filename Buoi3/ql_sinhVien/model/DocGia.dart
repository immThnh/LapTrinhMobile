import 'Sach.dart';

class DocGia {
  String _maDocGia;
  String _hoTen;
  List<Sach> _danhSachDangMuon;

  DocGia(this._maDocGia, this._hoTen, this._danhSachDangMuon);

  String get maDocGia => this._maDocGia;
  set maDocGia(String value) => value.isEmpty ? _maDocGia : _maDocGia = value;

  String get hoTen => _hoTen;
  set hoTen(String value) => value.isEmpty ? _hoTen : _hoTen = value;

  bool isExistSachMuon(String maSach) {
    return _danhSachDangMuon.any((s) => s.maSach == maSach);
  }

  void muonSach(Sach s) {
    if (isExistSachMuon(s.maSach) || s.tinhTrang) {
      print("Sach da duoc muon");
      return;
    }
    _danhSachDangMuon.add(s);
    s.tinhTrang = true;
  }

  void xuatThongTin() {
    print("-------------------------");
    print("Ho ten: $_hoTen");
    print("Ma doc gia: $_maDocGia");
    if (_danhSachDangMuon.length == 0) {
      print("Danh sach muon trong!");
    } else {
      // for (var sach in _danhSachDangMuon) {
      //   print("Ten sach: ${sach.tenSach}");
      // }
      print(
          "Danh sach sach: ${_danhSachDangMuon.map((s) => s.tenSach).toList().join(", ")}");
    }
    print("-------------------------");
  }
}
