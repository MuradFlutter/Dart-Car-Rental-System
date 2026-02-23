import 'dart:io';

class Car {
  String marka;
  String model;
  int qiymet;
  int nomre;
  bool vezyyet;

  Car(this.marka, this.model, this.qiymet, this.nomre, this.vezyyet);

  void show(){
    print("*" * 30);
    print("Nomre: $nomre");
    print("Marka: $marka");
    print("Model: $model");
    print("Qiymet: $qiymet");
    print("Nomre: $nomre");
    print("Vezyyet: $vezyyet");
  }
}
Future<void> icareprosesi() async {
  print ("icare prosesi basladi");

  for(int i=0;i<=100;i+=20) {
    await Future.delayed(Duration(seconds: 2));
    print("$i %");
  }

}






Future<void> main() async{
  int balans = 250;

  var a=Car("Mercedes", "E class", 200, 0,true );
  var b=Car("BMW", "M5", 230, 1, false);
  var c=Car("KIA", "Optima", 100, 2, false);

  List<Car> cars=[];
  cars.add(a);
  cars.add(b);
  cars.add(c);

while(true) {
  print("---------MENYU---------");
  print("--------XIDMETI SECIN---------");
  print("1) Masinlari goster");
  print("2) Icareye gotur");
  print("3) Icareyi qaytar");

  print("Secim edin:");
  int secim = int.parse(stdin.readLineSync()!);

  if (secim == 1) {
    Future<void> shhh() async {
      print("Siyahi");

      for (var i = 0; i < cars.length; i++) {
        await Future.delayed(Duration(seconds: 2));
        cars[i].show();
      }
    }
    await shhh();
  }else if (secim == 2) {
    print("Icare goturmek istediyiniz masini secin ");

    for (int i = 0; i < cars.length; i++) {
      print("${cars[i].nomre}) ${cars[i].marka}  ${cars[i].model} ${cars[i]
          .qiymet} ${cars[i].vezyyet}");
    }
    try {
      print("Masinin nomresini secin");
      int secimnom = int.parse(stdin.readLineSync()!);


      if (cars[secimnom].vezyyet == true) {
        print("Bu masin bos deyil");
      } else {
        print("nece gunlik icare isteyirsiz ?");
        int gun = int.parse(stdin.readLineSync()!);

        int borc = gun * cars[secimnom].qiymet;

        print("Borcunuz : $borc manat eledi");
        print("Mebleg ile razisiz?");

        String razilig = stdin.readLineSync()!;

        if (razilig == "he") {
          if (borc <= balans) {
            balans -= borc;

            await icareprosesi();

            cars[secimnom].vezyyet = true;

            print("Masin icareye verildi ");
          } else {
            print("balansda kifayet qeder mebleg yoxdu");
          }
        } else {
          print("Emeliyyat legv edildi");
        }
      }
    }
        catch (e) {
      print("Reqem daxil edin !");
    }
  }


  try {
    if (secim == 3) {
    print("Qaytarmaq istediyiniz masinin nomresini yazin ");
    int masinnom = int.parse(stdin.readLineSync()!);
    print("Masin qaytarildi");
    cars[masinnom].vezyyet = true;
  }

  }catch(e) {
    print("Yeniden reqem yazin");
  }

  }
}

