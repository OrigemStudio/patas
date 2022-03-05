import 'package:dartz/dartz.dart';
import 'package:patas/app/_exports.dart';

abstract class ISaveComplaintDatasource {
  Future<Either<Failure, SuccessResponse>> call(
      {required ComplaintEntity complaint});
}
