class User {

  int? id;
  String? username;


  User({
    this.id,
    this.username,});

  User.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    return map;
  }

}