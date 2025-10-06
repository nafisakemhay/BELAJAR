import 'dart:io';

void main() {
  bool jalan = true;

  while (jalan) {
    print("===  맛집 한류 (Restoran Korea) ===");

    // Menu makanan Korea
    print("\nMenu Makanan Korea:");
    print("1. Bibimbap - 35000");
    print("2. Kimchi Jjigae - 30000");
    print("3. Tteokbokki - 25000");

    stdout.write("Pilih makanan (1-3): ");
    int pilihMakanan = int.parse(stdin.readLineSync()!);
    String namaMakanan = "";
    int hargaMakanan = 0;

    if (pilihMakanan == 1) {
      namaMakanan = "Bibimbap";
      hargaMakanan = 35000;
    } else if (pilihMakanan == 2) {
      namaMakanan = "Kimchi Jjigae";
      hargaMakanan = 30000;
    } else if (pilihMakanan == 3) {
      namaMakanan = "Tteokbokki";
      hargaMakanan = 25000;
    } else {
      print("Pilihan tidak tersedia!");
      continue;
    }

    // Menu minuman Korea
    print("\nMenu Minuman Korea:");
    print("1. Sikhye - 10000");
    print("2. Teh Barley - 8000");
    print("3. Air Mineral - 5000");

    stdout.write("Pilih minuman (1-3): ");
    int pilihMinuman = int.parse(stdin.readLineSync()!);
    String namaMinuman = "";
    int hargaMinuman = 0;

    if (pilihMinuman == 1) {
      namaMinuman = "Sikhye";
      hargaMinuman = 10000;
    } else if (pilihMinuman == 2) {
      namaMinuman = "Teh Barley";
      hargaMinuman = 8000;
    } else if (pilihMinuman == 3) {
      namaMinuman = "Air Mineral";
      hargaMinuman = 5000;
    } else {
      print("Pilihan tidak tersedia!");
      continue;
    }

    // Hitung total
    int total = hargaMakanan + hargaMinuman;
    print("\n Pesanan Anda:");
    print("- $namaMakanan : Rp$hargaMakanan");
    print("- $namaMinuman : Rp$hargaMinuman");
    print("Total: Rp$total");

    // Pembayaran
    stdout.write("Masukkan uang pembayaran: Rp");
    int bayar = int.parse(stdin.readLineSync()!);

    if (bayar >= total) {
      int kembali = bayar - total;
      print(" Pembayaran berhasil, kembalian Rp$kembali");
    } else {
      print(" Uang tidak cukup, transaksi dibatalkan.");
    }

    // Konfirmasi lanjut
    stdout.write("Apakah Anda masih ingin menggunakan aplikasi ini? (y/n): ");
    String ulang = stdin.readLineSync()!;
    if (ulang.toLowerCase() != "y") {
      jalan = false;
      print("\n 감사합니다! Terima kasih telah berkunjung ke 맛집 한류.");
    }
  }
}
