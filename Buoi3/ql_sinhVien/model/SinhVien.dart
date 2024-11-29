class SinhVien {
  String _hoTen;
  double _dTB;
  int _tuoi;
  String _mssv;
  String _xepLoai;

  SinhVien(this._hoTen, this._dTB, this._tuoi, this._mssv, this._xepLoai);

  String get hoTen => this._hoTen;
  set hoTen(String value) {
    if (value.isEmpty) {
      print("Ten khong hop le");
      return;
    }
    this._hoTen = value;
  }

  double get dTB => this._dTB;
  set dTb(double value) {
    if (value < 0 || value > 10) {
      print("Diem khong hop le!");
      return;
    }
    this._dTB = value;
  }

  int get tuoi => this._tuoi;
  set tuoi(int value) {
    if (value < 0) {
      print("Tuoi khong duoc be hon 0");
      return;
    }
    this._tuoi = value;
  }

  String get mssv => this._mssv;
  set mssv(String value) {
    if (value.isEmpty) {
      print("Ma so sinh vien khong duoc de trong");
      return;
    }

    this._mssv = value;
  }

  void xuatThongTin() {
    print("-------------------------");
    print("Ho Ten: $_hoTen");
    print("Tuoi: $_tuoi");
    print("MSSV: $_mssv");
    print("Diem trung binh: $_dTB");
    if (_xepLoai.isEmpty) {
      tinhXepLoai();
    }
    print("Xep loai: $_xepLoai");
    print("-------------------------");
  }

  String get xepLoai => _xepLoai;

  void tinhXepLoai() {
    if (_dTB >= 8.0) {
      _xepLoai = "Gioi";
    } else if (_dTB >= 6.5) {
      _xepLoai = "Kha";
    } else if (_dTB >= 5.0) {
      _xepLoai = "Trung Binh";
    } else
      _xepLoai = "Yeu";
  }
}
