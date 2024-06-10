import 'dart:io';
import 'menuAntrianLanding.dart';
import 'menuAntrianTakeOff.dart';
void main() {
  while (true) {
    print("\nMenu Antrian landing dan take off:");
    print("1. Landing");
    print("2. Take off");
    print("3. Keluar");
    print("Pilih menu (1/2/3)");
    String? pilih = stdin.readLineSync();
    switch (pilih) {
      case '1':
        menuAntrianLanding();
        break;
      case '2':
        menuAntrianTakeOff();
        break;
      case '3':
        print("Apakah anda yakin ingin keluar ya/tidak");
        String? keluar = stdin.readLineSync();
          if(keluar == "ya"){
            print("Berhasil keluar dari program!!");
            exit(0);
          }
      break;
      default:
        print("Pilihan tidak valid. Silahkan pilih lagi.");
    }
  }
}
