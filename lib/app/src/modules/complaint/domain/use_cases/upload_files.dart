import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patas/app/_exports.dart';

abstract class IUploadFilesUseCase {
  Future<Either<String, SuccessResponse>> call({required PickedFile file});
}

class UploadFilesUseCaseImpl extends IUploadFilesUseCase {
  @override
  Future<Either<String, SuccessResponse>> call(
      {required PickedFile file}) async {
    // TODO: implement call
    throw UnimplementedError();
  }
}
