import 'package:image_picker/image_picker.dart';

import '../../../../../../patas_exports.dart';

class ComplaintModel extends ComplaintEntity {
  const ComplaintModel(
      {required String localization,
      required String contact,
      required List<PickedFile> files,
      required List<String> fileUrls})
      : super(
            localization: localization,
            contact: contact,
            files: files,
            fileUrls: fileUrls);

  static Map<String, dynamic> toMap(ComplaintEntity entity) {
    return {
      "localization": entity.localization,
      "contact": entity.contact,
      "files": entity.files,
      "fileUrls": entity.fileUrls
    };
  }

  @override
  List<Object?> get props => [localization, contact, files, fileUrls];

  @override
  bool? get stringify => true;
}

extension ComplaintEntityToModel on ComplaintEntity {
  ComplaintModel get toModel => ComplaintModel(
      localization: localization ?? '',
      contact: contact ?? '',
      files: files ?? const [],
      fileUrls: fileUrls ?? []);
}

extension ComplaintModelToEntity on ComplaintModel {
  ComplaintEntity get toEntity => ComplaintEntity(
      localization: localization,
      contact: contact,
      files: files,
      fileUrls: fileUrls);
}

extension ComplaintEntityCopyWith on ComplaintEntity {
  ComplaintEntity copyWith(
          {String? localization,
          String? contact,
          List<PickedFile>? files,
          List<String>? fileUrls}) =>
      ComplaintEntity(
          localization: localization ?? this.localization,
          contact: contact ?? this.contact,
          files: files ?? this.files,
          fileUrls: fileUrls ?? this.fileUrls);
}
