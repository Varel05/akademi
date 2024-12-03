import 'matakuliah.dart';

class Nilai {
  MataKuliah mataKuliah;
  double nilai;

  Nilai(this.mataKuliah, this.nilai);

  double get bobot {
    if (nilai >= 85) return 4.0;
    if (nilai >= 70) return 3.0;
    if (nilai >= 55) return 2.0;
    if (nilai >= 40) return 1.0;
    return 0.0;
  }
}

class Transkrip {
  List<Nilai> daftarNilai;

  Transkrip(this.daftarNilai);

  double hitungIPK() {
    var totalBobot = 0.0;
    var totalSKS = 0;
    for (var nilai in daftarNilai) {
      totalBobot += nilai.bobot * nilai.mataKuliah.sks;
      totalSKS += nilai.mataKuliah.sks;
    }
    return totalSKS > 0 ? totalBobot / totalSKS : 0.0;
  }

  void cetakTranskrip() {
    print('Transkrip Nilai:');
    for (var nilai in daftarNilai) {
      print(
          '- ${nilai.mataKuliah.nama} (${nilai.mataKuliah.kode}) - ${nilai.mataKuliah.sks} SKS - Nilai: ${nilai.nilai} (Bobot: ${nilai.bobot})');
    }
    print('IPK: ${hitungIPK().toStringAsFixed(2)}');
  }
}
