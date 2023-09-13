


import 'package:dartz/dartz.dart';
import 'package:flutter_project/shared/domain/models/jokes_response.dart';

import '../../../../shared/exceptions/http_exception.dart';

abstract class JokesRepository{
  Future<Either<AppException, JokesResponse>> fetchRandomJokes();

   }
