class Sach {
  String _maSach, _tenSach, _tacGia;
  bool _tinhTrang;

  Sach(this._maSach, this._tenSach, this._tacGia, this._tinhTrang);

  String get maSach => _maSach;
  set maSach(String value) => value.isEmpty ? _maSach : _maSach = value;

  String get tenSach => _tenSach;
  set tenSach(String value) => value.isEmpty ? _tenSach : _tenSach = value;

  String get tacGia => _tacGia;
  set tacGia(String value) => value.isEmpty ? _tenSach : _tenSach = value;

  bool get tinhTrang => _tinhTrang;
  set tinhTrang(bool value) => _tinhTrang = value;

  void xuatThongTin() {
    print("-------------------------");
    print("Ten sach: $_tenSach");
    print("Tac gia: $_tacGia");
    print("Ma sach: $_maSach");
    print("Trang thai: ${_tinhTrang ? "Da muon" : "Chua muon"}");
    print("-------------------------");
  }
}
