class User2 {
  final String name;
  final int? age;
  int money;
  final String? city;

  late final String userCode;

  User2(this.name, this.money, int i, {this.age, this.city}) {
    userCode = (city ?? "ist") + name;
  }
}
