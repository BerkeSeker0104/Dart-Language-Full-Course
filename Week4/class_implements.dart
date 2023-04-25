void main() {}

/* 
Interface : bir sınıf birden fazla sınıfı implements anahtar kelimesi ile
miras alabilir ve bu sayede çoklu kalıtım sağlanabilir.
Ayrıca belirtmek gerekir ki bir sınıf birden fazla sınıftan implemente 
edilebilirken buna karşılık sadece tek bir sınıftan extends edilir.

Böylece ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan 
sınıfları  bir çatı altında toplayabiliriz.

extends edersek class farklı özelliklere sahip olabilir, 
fakat implemenets edersek herhangi bir classı abstract olan classın 
birebir kopyasıdır.

"@override" : Bir sınıfın metodlarını kendi sınıfının içerisinde isteklerine
göre değiştirilip kullanılması yani bağlı olduğu sınıfın ihtiyaç duyduğu
metodlarını kullanması için yazdığımız parametredir.

*/
abstract class iStudent {
  final String name;
  final int age;

  int? schoolId;

  void saySomething() {
    print(age);
  }

  iStudent(this.name, this.age);
}

class student implements iStudent {
  final String name;
  final int age;

  student(this.name, this.age);

  @override
  void saySomething() {}

  @override
  int? schoolId;
}

class student2 {
  final String name;
  final int age;

  student2(this.name, this.age);

  @override
  void saySomething() {}

  @override
  int? schoolId;
}
