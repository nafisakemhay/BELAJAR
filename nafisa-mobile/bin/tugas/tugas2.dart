import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write('Masukkan skor ujian Anda (0 - 100): ');
  String? input = stdin.readLineSync();

  // Mengubah input menjadi integer
  int? skor = int.tryParse(input ?? '');

  // Validasi input
  if (skor == null || skor < 0 || skor > 100) {
    print('Error: Skor harus berupa angka antara 0 hingga 100.');
    return;
  }

  // Menentukan grade berdasarkan skor
  String grade;
  if (skor >= 85) {
    grade = 'A';
  } else if (skor >= 70) {
    grade = 'B';
  } else if (skor >= 60) {
    grade = 'C';
  } else if (skor >= 50) {
    grade = 'D';
  } else {
    grade = 'E';
  }

  // Menampilkan hasil
  print('Skor Anda: $skor');
  print('Grade Anda: $grade');
}