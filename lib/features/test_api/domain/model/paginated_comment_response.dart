

import 'package:flutter_project/features/test_api/domain/model/Comments.dart';

class PaginatedCommentResponse {
  List<Comments>? comments;
  int? total;
  int? skip;
  int? limit;
  
  PaginatedCommentResponse({
      this.comments,
      this.total,
      this.skip,
      this.limit,});

  PaginatedCommentResponse.fromJson(dynamic json) {
    if (json['comments'] != null) {
      comments = [];
      json['comments'].forEach((v) {
        comments!.add(Comments.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }
  

}