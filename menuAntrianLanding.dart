
import 'dart:io';
import 'landingTakeoff.dart';

Queue antrianLanding = Queue();
void menuAntrianLanding(){

  if (antrianLanding.maxQueue == 0) {
    antrianLanding.queueOperation();
  }

  while (true) {
    print("Menu Antrian Landing:");
    print("1. Tambahkan Pesawat ke Antrian Landing");
    print("2. Keluarkan Pesawat dari antrian landing");
    print("3. Lihat antrian pesawat landing");
    print("4. Cari antrian maskapai");
    print("5. Keluar kembali ke menu utama");

    print("Pilih menu (1/2/3/4/5)");
    String? pilih = stdin.readLineSync();

    switch (pilih) {
      case '1':
          print("Masukkan nama maskapai pesawat yang ingin dimasukkan ke antrian landing: ");
          String? namaMaskapai = stdin.readLineSync();
          print("Masukkan kode maskapai: ");
          String? kode = stdin.readLineSync();
          print("Masukkan jenis maskapai: ");
          String? jenis = stdin.readLineSync();
          antrianLanding.enqueue(Pesawat(namaMaskapai, kode, jenis));
          print("Maskapai $namaMaskapai dengan kode $kode dan jenis pesawat $jenis telah dimasukkan ke dalam antrian landing!!");
        break;
      case '2':
        Pesawat? removedItem = antrianLanding.dequeue();
        if (removedItem != null) {
          print("Pesawat dengan $removedItem telah landing!!");
        }
        break;
      case '3':
      print("Antrian Pesawat Landing!!");
          antrianLanding.printAntrian();
        break;
      case '4':
          print("Masukkan kode maskapai yang dicari: ");
          String? kode = stdin.readLineSync();
          int hasil = antrianLanding.search(kode);
          if (hasil == -1) {
            print("Maskapai dengan kode $kode tidak ada dalam antrian");
          } else {
            print("Maskapai dengan kode $kode berada di antrian ke: ${hasil + 1}");
          }
        break;
      case '5':
        return;
      default:
        print("Pilihan tidak valid. Silahkan pilih lagi.");
    }
  }
  }


