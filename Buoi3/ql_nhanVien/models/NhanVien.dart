class NhanVien {
  String _maNV, _hoTen;
  int _luongCB;

  NhanVien(this._maNV, this._hoTen, this._luongCB);

  String get maNV => _maNV;
  String get hoTen => _hoTen;
  int get luongCB => _luongCB;

  set maNV(String value) => value.isEmpty ? _maNV : _maNV = value;
  set hoTen(String value) => value.isEmpty ? _hoTen : _hoTen = value;
  set luongCB(int value) => value < 0 ? _luongCB : _luongCB = value;

  int tinhLuong() {
    return luongCB;
  }

  void xuatThongTin() {
    print("---------------Thong Tin Nhan Vien---------------");
    print("Ho ten:  $_hoTen");
    print("Ma NV: $_maNV");
    print("Luong CB: ${tinhLuong()}");
  }
}
