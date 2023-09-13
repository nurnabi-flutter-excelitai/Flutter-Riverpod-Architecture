


import 'package:dartz/dartz.dart';
import 'package:flutter_project/features/jokes/data/datasource/jokes_remote_datasource.dart';
import 'package:flutter_project/features/jokes/domain/repositories/jokes_repositories.dart';
import 'package:flutter_project/shared/domain/models/jokes_response.dart';
import 'package:flutter_project/shared/exceptions/http_exception.dart';

class JokesRepositoryImpl extends JokesRepository {

  final JokesDataSources jokesDataSources;
  JokesRepositoryImpl(this.jokesDataSources);

  @override
  Future<Either<AppException, JokesResponse>> fetchRandomJokes() {
    return jokesDataSources.fetchJokes();
  }


}
