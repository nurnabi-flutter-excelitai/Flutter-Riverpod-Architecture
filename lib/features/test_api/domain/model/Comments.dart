import 'User.dart';

class Comments {
  Comments({
    this.id,
    this.body,
    this.postId,
    this.user,});

  Comments.fromJson(dynamic json) {
    id = json['id'];
    body = json['body'];
    postId = json['postId'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  int? id;
  String? body;
  int? postId;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['body'] = body;
    map['postId'] = postId;
    if (user != null) {
      map['user'] = user!.toJson();
    }
    return map;
  }

}