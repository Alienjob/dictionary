import 'package:dartz/dartz.dart';
import 'package:dictionary/core/domain/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
