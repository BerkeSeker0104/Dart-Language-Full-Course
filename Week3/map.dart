void main() {
/*
Map yapısı : map yapısı aslında koleksiyon yapısıdır. Aynı zamanda
sözlük gibi de düşünebilirsiniz. Bu yapı sayesinde key ve value
değerleri ile kolay bir tanım sağlayabilirsiniz.
 */

// Müşteri geldi adı Ahmet parasi 20

  Map<String, int> users = {"ahmet": 20, "Mehmet": 30};

  // yukarıdaki iki alanda birinde String diğerinde int kullandık
  // Bu alanlarda istediğin veri tipinde değerler alabilir.
  // Map yapısını oluşturduk daha sonra key ve value atadık.

  // müşteri ahemtin ne kadar parası var

  print("Ahmetin parasi ${users["ahmet"]}");

  // mehmetin ne kadar parası var
  print("Mehmetin parasi ${users["Mehmet"]}");

  // musteri kimler var senin elinde

  //for lobunu kullanmak için listele işlemi yapması lazım
  // ancak yapacağımız işlem liste değil map
  // ".keys" yaparsam bu bana liste olarak döner

  for (var item in users.keys) {
    print("${item} - ${users[item]}");
  }

  // diğer bir kullanım için
  for (var i = 0; i < users.length; i++) {
    print("${users.keys.elementAt(i)} - ${users.values.elementAt(i)}");
  } //".elementAt" metodu indexte bulunan elemanı verir

// ben bir banakayim, müşterilerimizin birden fazla hesabı olabilir
// Ahmet bey 3 hesabi var sirasiyla 100, 300, 200
// mehmet bey 2 hesabi var 30, 50
// veli bey 1 hesabi var 30

// adamlarin hesaplarını kontrol et herhangi bir hesapta
// 150 tlden fazla olan varsa krediniz hazır de

  print("--------------------------");

  final Map<String, List<int>> Sekerbank = {
    "ahmet": [100, 300, 200]
  }; // value birden fazla değer alacağı için list yaptık

  Sekerbank["mehmet"] = [30, 50];
  Sekerbank["veli"] = [30];

  // yukarıdaki yöntemde mape farklı yoldan key ve value atadık

  for (var item in Sekerbank.keys) {
    // bankin tum elemanlari

    for (var money in Sekerbank[item]!) {
      // userin hesaplarini dolaşıyorum

      if (money > 150) {
        print("kredin hazır");
        break; //burada return dersen program sonlanır
        //break kullanırsan for kısmı sonlanır
      }
    }
  }

// bankadaki müşterilerin hesaplarının toplam mevlasini hesapla
  print("--------------------------");
  for (var name in Sekerbank.keys) {
    //Sekerbank[item]! => musterilerimizin hesapları demektir
    int result = 0;
    for (var money in Sekerbank[name]!) {
      result = result + money;
    }

    print("$name senin toplam paran => $result");
  }
}
