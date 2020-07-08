import "dart:io";
import 'dart:convert';

void main() {
  int selected;
  double num1;
  double num2;
  print('Hesap Makinesi Uygulamasına Hoşgeldiniz...\n');
  do {
    print('Lütfen Yapmak istediğiniz İşlemi Seçiniz');
    print('1) Toplama İşlemi');
    print('2) Çıkarma İşlemi');
    print('3) Çarpma İşlemi');
    print('4) Bölme İşlemi');
    print('5) Uygulamadan Çıkış');
    print('Seçmek istediğiniz işlem: ');
    selected = int.parse(stdin.readLineSync());
    if (selected == 1) {
      print('Toplamak istediğiniz 1. sayı: ');
      num1 = double.parse(stdin.readLineSync());
      print('Toplamak istediğiniz 2. sayı: ');
      num2 = double.parse(stdin.readLineSync());
      print('Seçilen iki sayının toplamı: ${num1 + num2}');
    }
    if (selected == 2) {
      print('Çıkarmak istediğiniz 1. sayı: ');
      num1 = double.parse(stdin.readLineSync());
      print('Çıkarmak istediğiniz 2. sayı: ');
      num2 = double.parse(stdin.readLineSync());
      print('Seçilen iki sayının farkı: ${num1 - num2}');
    }
    if (selected == 3) {
      print('Çarpmak istediğiniz 1. sayı: ');
      num1 = double.parse(stdin.readLineSync());
      print('Çarpmak istediğiniz 2. sayı: ');
      num2 = double.parse(stdin.readLineSync());
      print('Seçilen iki sayının çarpımı: ${num1 * num2}');
    }
    if (selected == 4) {
      do {
        print('Bölmek istediğiniz 1. sayı: ');
        num1 = double.parse(stdin.readLineSync());
        print('Bölmek istediğiniz 2. sayı: ');
        num2 = double.parse(stdin.readLineSync());
        if (num2 == 0) {
          print('Herhangi bir sayı 0 ile bölünemez');
        }
      } while (num2 == 0);

      print('Seçilen iki sayının bölümü: ${num1 / num2}');
    }
    if (selected == 5) {
      print('Hoşçakalın...');
    }
  } while (selected != 5);
}
