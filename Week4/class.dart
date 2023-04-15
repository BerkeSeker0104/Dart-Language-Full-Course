/*
Class (Dart dilinde sınıf yapısı)

Sınıf yapısını değişkenlerden ve fonksiyonlardan farklı olarak
değişkenleri ve fonksiyonları tutacak bir şey gibi tahayyül
edelim.

 */

import 'model/user_model.dart';

import "model/user_model_2.dart";

void main() {
  // musteri adi var, parasi var, yasi var bla bla...

  final int customerMoney = 50;
  final String customerName = "Berke";
  final int customerAge = 23;
  final String customerCity = "İstanbul";

  // bu musterimin yasi 10'dan buyukse bir işlem yapalım
  controlCustomerAge(customerAge);

  // yeni müşteri geliyor yine aynı alanlar

  final int customerMoney2 = 50;
  final String customerName2 = "Veli";
  final int customerAge2 = 13;
  final String customerCity2 = "kahramanmaraş";

  print("-------------------");

  int? newMoney;
  /*Dart dilinde soru işareti atmak 
  sonucunun null(boş) dönebileceğini söyler. O zaman bu hem 
  kendi değişken türünde bir değer hem de null değer alabilir.*/
  print(newMoney);

  /* Null Safety'nin amacı "null" değeri ortadan kaldırmak
  değildir. Bir değerin sadece "hiç" olmasına izin vermek, 
  bir dilin esnek ve kullanışlı olmasına fayda sağlar.
  Null Safety'nin gerçek amacı, hangi değişkenlerin null değer 
  alıp alamayacağının kontrolünü geliştiricilerin eline 
  bırakmaktır. Böylece bu değerden dolayı oluşabilecek hataların
  ve çökmelerin önüne geçebiliriz. */

  //  print(newMoney + 10); bu kod hata verir düzeltme yöntemleri ?

  /* ! Opratör : Null Assertion Operator olarak da görebileceğiniz
  ünlem, daha önce nullable olarak belirlediğimiz değişkenin
  null deper alamayacağından eminseniz güvenlikten ve perfonmastan 
  ödün vermeden önceden nullable olan değişkenler üzerindeki 
  metodları daha sonra da çağırabilmenize olanak sağlar.
    Yukarıda ki "print(newMoney! + 10);" şeklinde düzeltebiliriz
  ama kullanacağımız en kötü yöntem olur.
  */

  if (newMoney != null) {
    print(newMoney + 10);
  } else {
    print(10 +
        10); /* musteri diyorki ya bak bizim bir 
    servisimiz var paralari veren eger bir cavap gelmezse 
    sen ana deger olarak 10 ata*/
  }

  /* bankaya 3 tane müşteri gelir birinin 100 Tlsi var,
    diğerinin hesabı yok, diğerinin 0 Tl si var.

    Hesabı olmayana gelin hesap açalım, 0 Tlsi olanı kov,
    100 Tl si olana "Hoşgeldin Müşterim!" de.
    */

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item == null) {
      print("Haydi Hesap açalım");
    } else if (item > 0) {
      print("Hoş geldiniz Efenim");
    } else {
      print("Lütfen bankadan çıkın!");
    }

    //-----------
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  /* yeni bir metod olsun, bu methodda hesabı olmayanları ve
  parası olmayanları yok sayalım.
  para verdiklerimizi true yazalım
   method adı => "controlMoney"
   */

  // bool veri tipi ikili değer alır ve bunlar true ve false

  user user1 = user("Özge", 1000, age: 22, city: "Bulgaristan", id: '12');
  // user1 artık özellikleri var artık bunları kullanabilirz

  print(user1.age); // yaş özelliğini kullandık
  print(user1.money);

  user user2 = user("Berke", 1000, id: '456');
  print(user2.name);
  //print(user2._id); id artık gitti çünkü classı user_model taşıdım
  // id şu an burada gözüküyor ama class başka dosya yazdığında
  // id gizlenmiş olacak.
  //bunun yararı ise burada bunu işlemini bitirmiş oluyorum.

  // gelen müşterinin city istanbul ise kampanya kazanadı

  if (user2.city == null) {
    print("Müşteri şehrini vermemiş");
  } else {
    if (user2.city == "İstanbul") {
      print("Tebrikler kampanyayı kazandınız!");
    }
  }

  // musteri idsi 12 olana kampanya parasi ekle :
  if (user1.isSpecialUser("12")) {
    user1.money += 5;
    print("Kampanya parasi eklendi, mevcut bakiye ${user1.money}");
  }

  print("-----------------------");

  User2 newUser2 = User2("Gorke", 18, 500);
  print(newUser2.age);
  print(newUser2.money);
  newUser2.money += 5;
  print(newUser2.money);
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print("Alışveriş yapabilirsiniz");
  } else {
    print("Alışveriş yapamazsınız, yaşınız tutmuyor!");
  }
}

int? controlMoney(int? money) {
  if (money == null || money == 0) {
    return null;
  }
} //yukarıda ki kodda "||"(veya) yaparak iki tane if kullandık


