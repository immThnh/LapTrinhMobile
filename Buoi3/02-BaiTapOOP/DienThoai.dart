class DienThoai {
  String _maDT, _tenDT, _hang;
  double _giaNhap;
  double _giaBan;
  int _slTon;
  bool _disable;
  int _slDaBan;

  DienThoai(this._maDT, this._tenDT, this._hang, this._giaNhap, this._giaBan,
      this._slTon, this._disable, this._slDaBan);
  String get tenDT => _tenDT;
  String get maDT => _maDT;
  String get hang => _hang;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get slTon => _slTon;
  int get slDaBan => _slDaBan;
  bool get disable => _disable;

  set maDT(String value) =>
      value.isEmpty || !value.startsWith("DT-") ? _maDT : _maDT = value;

  set tenDT(String value) => value.isEmpty ? _tenDT : _tenDT = value;

  set hang(String value) => value.isEmpty ? _hang : _hang = value;

  set ten(String value) => value.isEmpty ? _tenDT : _tenDT = value;

  set giaNhap(double value) =>
      value <= 0 || value >= _giaBan ? _giaNhap : _giaNhap = value;

  set giaBan(double value) => value <= 0 ? _giaBan : _giaBan = value;

  set slTon(int value) => value <= 0 ? _slTon : _slTon = value;
  set slDaBan(int value) => value <= 0 ? _slDaBan : _slDaBan = value;

  set disable(bool value) {
    _disable = value;
  }

  int tinhLoiNhuanDuKien() {
    return (giaBan - giaBan).toInt() * slTon;
  }

  void xuatThongTin() {
    print("---------------------------");
    print("Ma DT: $_maDT");
    print("Ten dien thoai: $_tenDT");
    print("Hang: $_hang");
    print("Gia nhap: $_giaNhap");
    print("Gia ban: $_giaBan");
    print("SL Ton: $_slTon");
    print("Trang thai: $_disable");
  }
}
