import 'landingTakeoff.dart';
import 'dart:io';

Queue antrianTakeOff = Queue();

void menuAntrianTakeOff() {
  if (antrianTakeOff.maxQueue == 0) {
    antrianTakeOff.queueOperation();
  }

  while (true) {
    print("Menu Antrian Take off:");
    print("1. Tambahkan Pesawat ke Antrian Take off");
    print("2. Keluarkan Pesawat dari antrian Take off");
    print("3. Lihat antrian pesawat Take off");
    print("4. Cari antrian maskapai");
    print("5. Kembali ke menu utama");

    print("Pilih menu (1/2/3/4/5)");
    String? pilih = stdin.readLineSync();

    switch (pilih) {
      case '1':
          print("Masukkan nama maskapai pesawat yang ingin dimasukkan ke antrian Take off: ");
          String? namaMaskapai = stdin.readLineSync();
          print("Masukkan kode maskapai: ");
          String? kode = stdin.readLineSync();
          print("Masukkan jenis maskapai: ");
          String? jenis = stdin.readLineSync();
          antrianTakeOff.enqueue(Pesawat(namaMaskapai, kode, jenis));
          print("Maskapai $namaMaskapai dengan kode $kode dan jenis pesawat $jenis telah dimasukkan ke dalam antrian Take off!!");
        break;
      case '2':
          Pesawat? removedItem = antrianTakeOff.dequeue();
          if (removedItem != null) {
            print("Pesawat dengan $removedItem telah Take off!!");
          }
        break;
      case '3':
          print("Antrian Pesawat Take Off!!");
          antrianTakeOff.printAntrian();
        break;
      case '4':
          print("Masukkan kode maskapai yang dicari: ");
          String? kode = stdin.readLineSync();
          int hasil = antrianTakeOff.search(kode);
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
