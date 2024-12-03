import '../lib/mahasiswa.dart';
import '../lib/matakuliah.dart';
import '../lib/krs.dart';
import '../lib/nilai.dart';

void main() {
  // Mahasiswa
  var mahasiswa = Mahasiswa('12345', 'Arzlan Medanov', 3);

  // Mata Kuliah
  var mk1 = MataKuliah('MK001', 'Pemrograman Dasar', 3);
  var mk2 = MataKuliah('MK002', 'Matematika Diskrit', 2);
  var mk3 = MataKuliah('MK003', 'Algoritma', 4);

  // KRS
  var krs = KRS(mahasiswa, [mk1, mk2, mk3]);
  krs.cetakKRS();

  // Nilai
  var nilai1 = Nilai(mk1, 90);
  var nilai2 = Nilai(mk2, 75);
  var nilai3 = Nilai(mk3, 80);

  var transkrip = Transkrip([nilai1, nilai2, nilai3]);
  transkrip.cetakTranskrip();
}
