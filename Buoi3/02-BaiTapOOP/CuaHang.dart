import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {
  String _tenCuaHang, _diaChi;
  List<DienThoai> _dienThoais;
  List<HoaDon> _hoaDons;

  CuaHang(this._tenCuaHang, this._diaChi, this._dienThoais, this._hoaDons);

  String get tenCuaHang => _tenCuaHang;
  String get diaChi => _diaChi;
  List<DienThoai> get dienThoai => _dienThoais;
  List<HoaDon> get hoaDons => _hoaDons;

  set tenCuaHang(String value) =>
      value.isEmpty ? _tenCuaHang : _tenCuaHang = value;

  set diaChi(String value) => value.isEmpty ? _diaChi : _diaChi = value;

  void themDienThoai(DienThoai dienThoai) {
    _dienThoais.add(dienThoai);
  }

  void capNhatThongTinDienThoai(DienThoai dienThoai) {
    for (var i = 0; i < _dienThoais.length; i++) {
      if (_dienThoais[i].maDT == dienThoai.maDT) {
        _dienThoais[i] = dienThoai;
        break;
      }
    }
  }

  void ngungKinhDoanDienThoai(DienThoai dienThoai) {
    var dt = _dienThoais.firstWhere((dt) => dt.maDT == dienThoai.maDT);
    dt.disable = true;
    capNhatThongTinDienThoai(dt);
  }

  DienThoai timKiemTheoDienThoai(String maDT) {
    return _dienThoais.firstWhere((dt) => dt.maDT == maDT);
  }

  void hienThiDanhSachDienThoai() {
    print("-----------------Danh sach dien thoai-----------------");
    for (var d in _dienThoais) {
      d.xuatThongTin();
    }
    print("------------------------------------------------------");
  }

  void taoHoaDon() {
    // HoaDon hoaDon = HoaDon("1", _ngayBan, _slMua, _giaBanThucTe, _tenKH, _sdt, _dienThoaiDuocBan)
  }
}
