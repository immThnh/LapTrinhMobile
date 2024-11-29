import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {
  String _tenCuaHang, _diaChi;
  List<DienThoai> _dienThoais;
  List<HoaDon> _hoaDons;
  int totalHoaDon = 0;

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

  HoaDon taoHoaDon(int soLuongMua, String tenKH, String maDT, String sdt,
      double giaBanThucTe, DienThoai dt) {
    HoaDon hoaDon = HoaDon("${totalHoaDon + 1}", DateTime.now(), soLuongMua,
        giaBanThucTe, tenKH, sdt, dt);
    _hoaDons.add(hoaDon);
    dt.slTon -= soLuongMua;
    dt.slDaBan += soLuongMua;
    totalHoaDon++;
    print("Tao hoa dong thanh cong!");
    return hoaDon;
  }

  HoaDon timKiemHoaDon(String maHD, [String? tenKH, DateTime? ngayBan]) {
    return _hoaDons.firstWhere((hd) {
      bool matches = hd.maHD == maHD;
      if (tenKH != null) {
        matches = matches && hd.tenKH == tenKH;
      }
      if (ngayBan != null) {
        matches = matches && hd.ngayBan == ngayBan;
      }
      return matches;
    });
  }

  void hienThiDanhSachHoaDon() {
    print("------------------Danh sach hoa don------------------");
    for (var hd in _hoaDons) {
      hd.xuatThongTin();
    }
    print("----------------------------------------------------");
  }

  int tongDanhThuTheoNgay(DateTime ngay) {
    return _hoaDons
        .where((hd) => hd.ngayBan.day == ngay.day)
        .map((hd) => hd.tinhTongTien())
        .fold(0, (prev, element) => prev + element);
  }

  int tongDanhThuTheoThang(DateTime thang) {
    return _hoaDons
        .where((hd) => hd.ngayBan.month == thang.month)
        .map((hd) => hd.tinhTongTien())
        .fold(0, (prev, element) => prev + element);
  }

  int tongDanhThuTheoNam(DateTime nam) {
    return _hoaDons
        .where((hd) => hd.ngayBan.year == nam.year)
        .map((hd) => hd.tinhTongTien())
        .fold(0, (prev, element) => prev + element);
  }

  int toangLoiNhuanTheoNgay(DateTime ngay) {
    return _hoaDons
        .where((hd) => hd.ngayBan.day == ngay.day)
        .map((hd) => hd.tinhLoiNhuan())
        .fold(0, (prev, element) => prev + element);
  }

  int toangLoiNhuanTheoThang(DateTime thang) {
    return _hoaDons
        .where((hd) => hd.ngayBan.month == thang.month)
        .map((hd) => hd.tinhLoiNhuan())
        .fold(0, (prev, element) => prev + element);
  }

  int toangLoiNhuanTheoNam(DateTime nam) {
    return _hoaDons
        .where((hd) => hd.ngayBan.year == nam.year)
        .map((hd) => hd.tinhLoiNhuan())
        .fold(0, (prev, element) => prev + element);
  }

  List<DienThoai> thongKeTopBanChay() {
    return _dienThoais.where((dt) => dt.slDaBan > 0).toList()
      ..sort((a, b) => b.slDaBan.compareTo(a.slDaBan));
  }

  void baoCaoTonKho() {
    print("------------------Bao cao ton kho------------------");
    for (var dt in _dienThoais) {
      print("Dien thoai: ${dt.tenDT}");
      print("So luong ton: ${dt.slTon}");
      print("--------------------------------------------------");
    }
  }
}
