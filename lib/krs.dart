import 'mahasiswa.dart';
import 'matakuliah.dart';

class KRS {
  Mahasiswa mahasiswa;
  List<MataKuliah> daftarMataKuliah;

  KRS(this.mahasiswa, this.daftarMataKuliah);

  void cetakKRS() {
    print('KRS Mahasiswa: ${mahasiswa.nama} (${mahasiswa.nim})');
    print('Semester: ${mahasiswa.semester}');
    print('Daftar Mata Kuliah:');
    for (var mk in daftarMataKuliah) {
      print('- ${mk.nama} (${mk.kode}) - ${mk.sks} SKS');
    }
  }
}
