import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patas/app/_exports.dart';

abstract class IUploadFilesRepository {
  Future<Either<String, SuccessResponse>> call({required PickedFile file});
}
