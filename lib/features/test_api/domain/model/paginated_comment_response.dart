

import 'package:flutter_project/features/test_api/domain/model/Comments.dart';
const int PER_PAGE_LIMIT = 20;
class PaginatedCommentResponse {
  List<Comments>? comments;
  int? total;
  int? skip;
  static const int? limit=PER_PAGE_LIMIT;

  PaginatedCommentResponse({
      this.comments,
      this.total,
      this.skip,});

  PaginatedCommentResponse.fromJson(dynamic json) {
    if (json['comments'] != null) {
      comments = [];
      json['comments'].forEach((v) {
        comments!.add(Comments.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
  }


}