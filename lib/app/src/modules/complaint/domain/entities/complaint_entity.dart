import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ComplaintEntity extends Equatable {
  final String? localization;
  final String? contact;
  final List<PickedFile>? files;
  final List<String>? fileUrls;

  const ComplaintEntity(
      {this.localization, this.contact, this.files, this.fileUrls});

  @override
  List<Object?> get props => [localization, contact, files, fileUrls];
}
