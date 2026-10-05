import 'dart:io';

void main() {
  var jalan = true;

    List waitingList = [];
    Map pos1 = {'plat':null};
    Map pos2 = {'plat':null};
    Map pos3 = {'plat':null};

   tampilMenu() {
    print(' ');
    print('===================');
    print('Pencucian Mobil');
    print('===================');
    print('1. Tambah Antrian');
    print('2. Lihat Waiting List');
    print('3. Lihat Pos');
    print('4. Selesaikan Pos');
    print('5. Keluar');
    print('===================');
    print(' ');
  }

  while (jalan = true) {
    tampilMenu(); 

    stdout.write('Inputkan Menu (1/2/3/4/5):');
    var pilihMenu = stdin.readLineSync();

    if (pilihMenu == '1') {
      stdout.write('Inputkan Nomor Kendaraan:');
      var noKendaraaan = stdin.readLineSync();

      if (pos1['plat'] == null) {
        pos1['plat'] = noKendaraaan;
        
      } else if (pos2['plat'] == null) {
        pos2['plat'] = noKendaraaan;
        
      } else if (pos3['plat'] == null) {
        pos3['plat'] = noKendaraaan;
        
      } else {
        waitingList.add(noKendaraaan);
      }

    }

    if (pilihMenu == '2') {
      print('Kendaraan Yang Menunggu :');
      for (var i = 0; i < waitingList.length; i++) {
        print('Kendaraan ke-${i+1} : ${waitingList[i]}');
      }
    }

    if (pilihMenu == '3') {
      print(' ');
      print('KENDARAAN YANG SEDANG DICUCI :');
      if (pos1.isEmpty) {
        print('POS A : Kosong');
      } else {
        print('POS A : ${pos1['plat']}');
      }

      if (pos2.isEmpty) {
        print('POS B : Kosong');
      } else {
        print('POS B : ${pos2['plat']}');
      }

      if (pos3.isEmpty) {
        print('POS C : Kosong');
      } else {
        print('POS C : ${pos3['plat']}');
      }
      
    }

    if (pilihMenu == '4') {
      print(' ');
      stdout.write('Pilih Pos Yang Selesai (A/B/C):');
       var pilihPos = stdin.readLineSync();

       if (pilihPos == 'A') {
         print(' ');
         print('Kendaraan ${pos1['plat']} Telah Selesai');
         pos1['plat'] = null;

         if (waitingList.isNotEmpty) {
          pos1['plat'] = waitingList.first;
          waitingList.removeAt(0);
         }
         
       }

       if (pilihPos == 'B') {
         print(' ');
         print('Kendaraan ${pos2['plat']} Telah Selesai');
         pos2['plat'] = null;

         if (waitingList.isNotEmpty) {
           pos2['plat'] = waitingList.first;
           waitingList.removeAt(0);
         }
         
       }

       if (pilihPos == 'C') {
         print(' ');
         print('Kendaraan ${pos3['plat']} Telah Selesai');
         pos3['plat'] = null;

         if (waitingList.isNotEmpty) {
           pos3['plat'] = waitingList.first;
            waitingList.removeAt(0);
         }
       }

       if (pilihMenu == '5') {
         exit(0);
       }
    }
  }

}