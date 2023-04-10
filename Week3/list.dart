void main() {
  // Bir bankaya 5 müşteri gelir ve bumların parası ;
  // 50, 100, 150, 110, 300
  // 100'den büyük olanlara hoşgeldiniz beyefendi desin.

  // Biz önceki derslerde öğrendiğimiz gibi bunları yaparsak :
  final int money1 = 500;
  final int money2 = 100; // yanda ki gibi yazabiliriz fakat..

  if (money1 > 100) {
    print("Hos geldiniz Beyefendi");
  } else {
    print("yetersiz");
  }

  if (money2 > 100) {
    print("Hos geldiniz Beyefendi");
  } else {
    print("yetersiz");
  }

  // Yukarıdaki gibi yazarsak işimiz çok uzayacak bunun için
  // list ile yapalım.

  //List<listenin türünü yazıyorsun buraya> bu kısma listenin adı,
  // = [0, 1, 2, ...] buraya listenin içini dolduruyorsun
  // listenin içi 0,1,2,.. diye gider. yani ilk eleman 0 olan yer

  List<int> moneys = [300, 150, 110, 100, 50];

  print("müşteri 1 parası : ${moneys[0]}");

  // paraları küçükten büyüğe doğru dizme ;
  moneys.sort();
  print(moneys);

  // listeye yeni eleman ekleme ".add"
  moneys.add(500);
  print(moneys);

  // ".add" ile eleman eklediğimizde listenin son elemanı olur
  // İstediğimiz yere ekleme yapmak için ".insert" kullanıyoruz

  moneys.insert(2, 105);
  print(moneys);

  final List<int> newMoneys = [300, 150, 110, 100, 50];

  // Normalde final eklediğimizden dolayı list değiştiremeyiz
  // fakat ".add" ile eleman ekleniyor neden ?
  // Final listenin objesini tutuyor o değişmez
  // ama list içinde ki referanslar değişir.
  newMoneys.add(5);
  print(newMoneys);

  // mesela list içindekini silebilirsin referans olduğu için
  newMoneys.clear();
  print(newMoneys);

  // 100 tane müşteri yap bunların hepsine sira numarasına göre
  // 5 tl ekle
  // aşağıdaki kullanımı prarik olarak düşün ileride göreceksin

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  // Custmoers 100 30 40 60
  // 35 tlden büyük olanları burada kredi verebiliriz
  // küçük olanlar bye

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  moneyCustomerNews.sort();

  /* for döngüsü, yinelici olarak bir değişken alır ve ona
  bir başlangıç değeri atar ve test koşulu doğru olduğu müddetçe 
  de döngü yinelenir. 
  Geçerli yineleme için döngü ifadeleri yürütüldüğünde, yineleyici
  yeni değerle güncellenir ve test koşulu hala geçerliyse,
  döngüye devam eder. 
  Test koşulu yanlış bir değer döndürdüğünde, for döngüsü
  sona erer.
  For döngüsü özellikle tekrarlayan işlemlerin sayısı
  bilindiğinde tercih edilmesi gerekir.
  
  
for(başlatma; koşul; arttırma veya azaltma){
 // döngü gövdesi
}
   */

  for (int i = 0; i < moneyCustomerNews.length; i += 1) {
    print("müşteri parasi: ${moneyCustomerNews[i]}");
    if (moneyCustomerNews[i] > 35) {
      print("Kredi hazır");
    } else if (moneyCustomerNews[i] > 0) {
      print("Kredi veremeyiz ama bir düşünelim");
    } else {
      print("by");
    }
  }
}
