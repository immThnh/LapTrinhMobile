import '../model/DocGia.dart';
import '../model/Sach.dart';
import '../model/ThuVien.dart';

List<Sach> initListSach() {
  Sach s1 = Sach("1", "Sach 1", "Tac gia 1", false);
  Sach s2 = Sach("2", "Sach 2", "Tac gia 2", false);
  Sach s3 = Sach("3", "Sach 3", "Tac gia 3", false);
  Sach s4 = Sach("4", "Sach 4", "Tac gia 4", false);
  return [s1, s2, s3, s4];
}

List<DocGia> initListDocGia(List<Sach> sachs) {
  DocGia d1 = DocGia("1", "Nguyen Van A", []);
  DocGia d2 = DocGia("2", "Nguyen Van B", []);
  DocGia d3 = DocGia("3", "Nguyen Van C", []);
  DocGia d4 = DocGia("4", "Nguyen Van D", []);
  d3.muonSach(sachs[0]);
  d1.muonSach(sachs[1]);
  d1.muonSach(sachs[2]);
  d1.muonSach(sachs[3]);
  return [d1, d2, d3, d4];
}

void main() {
  List<Sach> sachs = initListSach();
  List<DocGia> docGias = initListDocGia(sachs);
  ThuVien thuVien = ThuVien(sachs, docGias);
  thuVien.xuatThongTin();
}
