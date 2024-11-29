import 'Sach.dart';
import 'DocGia.dart';

class ThuVien {
  List<Sach> _danhSachSach;
  List<DocGia> _danhSachDocGia;

  ThuVien(this._danhSachSach, this._danhSachDocGia);

  List<Sach> get danhSachSach => _danhSachSach;
  List<DocGia> get danhSachDocGia => _danhSachDocGia;

  bool isExistSach(String maSach) =>
      _danhSachSach.any((s) => s.maSach == maSach);

  bool isExistDocGia(String maDocGia) =>
      danhSachDocGia.any((s) => s.maDocGia == maDocGia);

  void themSach(String maSach, String tenSach, String tacGia, bool tinhTrang) {
    if (isExistSach(maSach)) {
      print("Sach da ton tai!");
      return;
    }
    Sach sach1 = Sach(maSach, tenSach, tacGia, tinhTrang);
    _danhSachSach.add(sach1);
  }

  void themDocGia(
      String maDocGia, String hoTen, List<Sach> danhSachMuon) {
    if (isExistDocGia(maDocGia)) {
      print("Sach da ton tai!");
      return;
    }
    DocGia docGia1 = DocGia(maDocGia, hoTen, danhSachMuon);
    _danhSachDocGia.add(docGia1);
  }

  void xuatThongTin() {
    print("-----------------------");
    print("========= Dach sach sach =========");
    for(var sach in _danhSachSach) {
      sach.xuatThongTin();
    }
    print("========= Dach sach doc gia =========");
    for(var s in _danhSachDocGia) {
      s.xuatThongTin();
    }
    print("-----------------------");


  }
}
