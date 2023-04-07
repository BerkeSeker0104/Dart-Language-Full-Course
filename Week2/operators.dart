void main() {
  /* 
  Operatörler programlama dillerinde tek başlarına herhangi
  bir anlamı olmayan ancak programın işleyişine katkıda bulunan
  karakter ya da karakter topluluklarına denilmektedir.
   */
  int money = 5;

  money = money + 1;

  money += 1;
  money++;
  //Yukarıda ki iki kod aynı işlevi yerine getirirler.
  money--;

  print(money);

  String name = "Veli";
  String bacik = "bacik";

  print(name + bacik);

  if (name == "Veli") {
    print("Name değeri ile veli eşit");
    // "==" eşit midir işareti, karşılaştırma yapılıyor.
  } else {
    print("Aynı depiller ");
  }

  if (name != "Veli") {} // eşit değil midir ?

  if (name.length > "Veli".length) {}
  if (name.length < "Veli".length) {}
  if (name.length >= "Veli".length) {} //büyük eşit
  if (name.length <= "Veli".length) {} // küçük eşit

  /* 
  Pazarda elma alacaksın. 
  normal fiyatı 20 TL fakat bugüne özel indirim var
  indirim yüzde 60dır 
  Benim param ilk durumda 30Tl ise son durumda ne kadardır.
   */

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;
  print("Alışveriş yapmadan önce ki param $myMoney Tl");

  myMoney = myMoney - (appleMoney ~/ disccount);
  print("Kalan para $myMoney Tl");

  print(myMoney % 2 == 0); // 2 ile bölümünden kalan 0 mı ?
  print(myMoney.isEven); // çift sayı mı?
  print(myMoney.isOdd); // tek sayı mı ?

  /* 
  Debugging 

  VS Code'un yerleşik hata ayıklayıcısı düzenlenme, derleme ve
  hata ayıklama döngünüzü hızlandırmaya yardımcı olur.
  Kodunuzda ki hataları denetlemek için kullanılır. 
   */
}
