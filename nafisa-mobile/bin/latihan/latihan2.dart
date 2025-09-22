void main() {
  double panjang = 10.0;
  double lebar = 5.0;

  double luas = panjang * lebar;
  double keliling = 2 * (panjang + lebar);

  print('=== Perhitungan Persegi Panjang ===');
  print('Panjang   : ${panjang.toStringAsFixed(1)}');
  print('Lebar     : ${lebar.toStringAsFixed(1)}');
  print('Luas      : ${luas.toStringAsFixed(1)}');
  print('Keliling  : ${keliling.toStringAsFixed(1)}');
}