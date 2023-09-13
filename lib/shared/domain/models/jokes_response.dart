


const int PER_PAGE_LIMIT = 20;

class JokesResponse<T> {

  final List<T> data;
  JokesResponse({ required this.data});

  factory JokesResponse.fromJson(dynamic json, List<T> data,
      {Function(dynamic json)? fixture}) => JokesResponse(
       data: data,
      );
  @override
  String toString() {
    return 'JokesResponse(data:${data.length})';
  }
}
