/*class ayrı bir klasör oluşturup "model" klosorun içinde
"user_model.dart" şeklinde içine yazarım. 
Şimdi classı buraya yazdık "class.dart" da çalışması için 
library import yapmamız lazım.
"import 'model/user_model.dart';"
 */

//adi olmak zorunda
//parası olmak zorunda
//yasini vermeyebilir
//citysini vermeyebilir
// id değişkenine sadece bu sınıf içerisinde erişebilirsin

/* Dart dilinde private değişken ve metotlar, normalde kullanılan
yöntemlerle sınıf dışından erişimi engellemek için kullanılır.
class içerisine yazılan değişken ve metotlara dışarıdan erişimine,
kısıtlama getirmek amacıyla istenilen yapılar gizli hale getirilir 
Gizli hale getirmek için ilgili değişken veya metodun adının
hemen başına alt çizgi "_" işareti getirilir.
*/

class user {
  //müşterinin özellikleri neler ?
  late final String
      name; /* "late" dememizin sebebi sonradan
   değer alıcağını söylüyoruz.*/
  late int money; //late dediğim için değişebilir.
  late final int? age;
  late final String? city;
  late final String _id;

// yaşı ve şehri opsiyonel yaptım "{int? age, String? city}"
  user(String name, int money, {required String id, int? age, String? city}) {
    this.name = name; /*"this." demek yukarıda ki name ile eşitlemek*/
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
  }

// id kontrol fonksşyonu ekleyelim:
  bool isSpecialUser(String id) {
    return _id == id;
  }

/* id var mı yok mu kontrol
bool isEmptyId() {
  return _id.isEmpty;
} // bunun alternatifi altta yazdım :
 */

  bool isEmptyId() => _id.isEmpty;
}
