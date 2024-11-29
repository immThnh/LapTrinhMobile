import 'DienThoai.dart';

class HoaDon {
  String _maHD;
  DateTime _ngayBan;
  int _slMua;
  double _giaBanThucTe;
  String _tenKH;
  String _sdt;
  DienThoai _dienThoaiDuocBan;

  HoaDon(this._maHD, this._ngayBan, this._slMua, this._giaBanThucTe,
      this._tenKH, this._sdt, this._dienThoaiDuocBan);

  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  int get slMua => _slMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKH => _tenKH;
  String get SDT => _sdt;
  DienThoai get dienThoai => _dienThoaiDuocBan;

  set maHD(String value) =>
      value.isEmpty || !value.startsWith("HD-") ? _maHD : _maHD = value;
  set ngayBan(DateTime ngayBan) =>
      ngayBan.isBefore(DateTime.now()) ? _ngayBan : _ngayBan = ngayBan;
  set slMua(int value) => slMua <= 0 ? _slMua : _slMua = value;
  set giaBanThucTe(double value) =>
      value > 0 ? _giaBanThucTe = value : _giaBanThucTe;
  set tenKhachHang(String value) => value.isEmpty ? _tenKH : _tenKH = value;
  set soDT(String value) =>
      value.isEmpty || !value.startsWith("DT-") ? _sdt : _sdt = value;

      set dienThoaiDuocBan(DienThoai value) => _dienThoaiDuocBan = value;

    int tinhTongTien() {
      return (_slMua * _giaBanThucTe).toInt();
    }

    int tinhLoiNhuan() {
      return (_slMua * (_giaBanThucTe - _dienThoaiDuocBan.giaNhap)).toInt();
    }

    void xuatThongTin() {
      print("------------------------------");
      print("Ma hoa don: $_maHD");
      print("Ngay ban: $_ngayBan");
      print("Dien thoai duoc ban:");
      _dienThoaiDuocBan.xuatThongTin();
      print("So luong mua: $_slMua");
      print("Gia ban thuc te: $_giaBanThucTe");
      print("Ten khach hang : $_tenKH");
      print("So dien thoai: $_sdt");
      print("------------------------------");
    }
}
