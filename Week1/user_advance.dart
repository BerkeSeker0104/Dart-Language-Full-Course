void main() {
  String userName = "Berke";

  var userName2 = "veli"; // böyle de dynamic şeklinde yazabiliriz.

  // fakat tip vererek yazmak her zaman daha iyi...

  /* Kodunuzdaki değişkeni sabitlemek istiyorsanız kodun
  başına final ekleyerek bunu yapabilirsin. */

  final userName3 = "Yuzge";

  userName2 = "mehemt"; // bunu degistirebildik
  // userName3 = "Özge";  kodumuz hata verdi

/* const da final gibi değişkeni sabit tutuyor. Farkklar nedir ?

Uygulama çalıştığında final o anki değeri alır.
const 'da proje başlarken koddaki değişken neyse o olur.
 */

  const bankName1 = "Seker Bank";

  /* Odev1 
  bir banka oluştur ve ad ver,
  ilk müşterini oluştur,
  ilk müşterinin parasını oluştur,

  yeni müşteri gelecek onun işlemlerini yap,
  ilk müşterinin parasından yeni gelen müşterinin parasını
  çıkar.
  */

  const String bankName = "Garanti BBVA";
  final String bankUserName = "Berke Şeker";
  int userBankMoney = 100;

  print("""Hoş geldiniz $bankName'ya Sayın $bankUserName, 
  mevcut bakiyeniz $userBankMoney Türk lirasıdır.""");

  const String bankUserName2 = "Süreyya Karaturna";
  double userBankMoney2 = 49.99;

  print("""Hoş geldiniz $bankName'ya Sayın $bankUserName2, 
  mevcut bakiyeniz $userBankMoney2 Türk lirasıdır.""");

  userBankMoney = userBankMoney - userBankMoney2.toInt();

  print("""ayın $bankUserName, $bankUserName2 olan borcunuz kesilmiştir.
      Mevcut bakiyeniz $userBankMoney""");

  /* int değişkeni ile double değişkeni arasında işlem yapmak 
 istiyorsan int olan değişkenin sonuna".toInt()" ekleyebilirsin. 
 */

/*Camel Case
Camel case, isimlendirme türünde ilk harf küçük harf ile başlar
 ve sonraki her yeni sözcüğün ilk harfi büyük olmalıdır.

Örnek: buttonPrimaryHover

Snake Case
Snake case, isimlendirme türünde her yeni sözcüğün 
arası ‘_’ (alt çizgi) ile ayrılır,
 ve her kelime küçük harf ile başlar.

Örnek: button_primary_hover

Pascal Case
PascalCase, isimlendirme türü ise camel case ile aynı sayılabilir,
 aralarındaki tek fark camel case ‘de ilk kelimenin
  ilk harfi küçük iken, Pascal case ‘de 
  Her kelimenin ilk harfi büyük yazılır.

Örnek: ButtonPrimaryHover
 */

/*Odev2 
Benim bir halı saham var 100 kişi kapasiteli, 
saat 10'da 20 kişilik bir müşteri maç yapacak,
saat 12'de musteri2 50 kişilik yer ayırtacak,
bu islem sonunda benim halı saha kapasitem kac kalmıstır ? 
*/

  final String footballFieldName = "Seker Spor";
  int footballFieldCapacity = 100;

  print("$footballFieldName sahasına hoş geldiniz!");
  print("Mevcut kapasitemiz 100 kişidir.");

  const int musteri1 = 20;
  print("Merhaba saat 10'a 20 kişilik yer ayırtabilir miyim ?");

  footballFieldCapacity = footballFieldCapacity - musteri1;
  print("Kalan kapasite: $footballFieldCapacity");

  const int musteri2 = 50;
  print("Merhaba saat 12'ye 50 kişilik yer ayırtabilir miyim ?");

  footballFieldCapacity = footballFieldCapacity - musteri2;
  print("Kalan kapasite: $footballFieldCapacity");
}
