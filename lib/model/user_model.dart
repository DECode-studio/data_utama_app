class User {
  int? id;
  String? name;
  String? gender;
  String? email;
  String? phone;
  String? password;

  User(
      {this.id, this.name, this.gender, this.email, this.phone, this.password});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id;
    }

    map['name'] = this.name;
    map['gender'] = this.gender;
    map['email'] = this.email;
    map['phone'] = this.phone;
    map['password'] = this.password;

    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.gender = map['gender'];
    this.email = map['email'];
    this.phone = map['phone'];
    this.password = map['password'];
  }
}
