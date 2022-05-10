import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kopiek_resto/domain/entities/app_error.dart';
import 'package:kopiek_resto/domain/repositories/data_master_repository.dart';
import 'package:kopiek_resto/domain/usecases/usecase.dart';

@lazySingleton
class PostMenu extends UseCase<bool,FormData>{
  final DataMasterRepository _repository;

  PostMenu(this._repository);
  @override
  Future<Either<AppError, bool>> call(FormData params)async {
    return await _repository.postMenu(params);
  }

}