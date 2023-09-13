class User {
  User({
    this.id,
    this.username,});

  User.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
  }
  int? id;
  String? username;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    return map;
  }

}