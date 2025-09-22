void main() {
  String nama = "Nafisa Gumairi Kemhay";
  int umur = 20;
  double upahPerJam = 50000;
  bool statusTetap = true; 
  int jamKerja = 40;

  double gajiKotor = jamKerja * upahPerJam;

  double pajak = statusTetap ? 0.10 : 0.05;
  double potongan = gajiKotor * pajak;

  double gajiBersih = gajiKotor - potongan;

  print("=== Slip Gaji Karyawan ===");
  print("Nama           : $nama");
  print("Umur           : $umur tahun");
  print("Status         : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("Jam Kerja      : $jamKerja jam");
  print("Upah per Jam   : Rp${upahPerJam.toStringAsFixed(0)}");
  print("Gaji Kotor     : Rp${gajiKotor.toStringAsFixed(0)}");
  print("Potongan Pajak : Rp${potongan.toStringAsFixed(0)}");
  print("Gaji Bersih    : Rp${gajiBersih.toStringAsFixed(0)}");
}