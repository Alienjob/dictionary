import 'package:bloc/bloc.dart';
import 'package:dictionary/repository/authentication_repository.dart';
import 'package:dictionary/services/sql_lite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'progress_cubit.freezed.dart';

@freezed
class Progress with _$Progress {
  factory Progress({required int remember, required int forget}) = _Progress;
}

@freezed
class DaylyProgress with _$DaylyProgress {
  factory DaylyProgress({required Map<int, Progress> data}) = _DaylyProgress;
}

class DaylyProgressCubit extends Cubit<DaylyProgress> {
  DaylyProgressCubit(
      {required AuthenticationRepository authRepository,
      required SQLLiteService localSql})
      : _authRepository = authRepository,
        _localSql = localSql,
        super(DaylyProgress(data: {}));

  final AuthenticationRepository _authRepository;
  final SQLLiteService _localSql;
}
