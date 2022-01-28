class UpdatePhotosMutation {
  static const String value = r'''
    mutation UpdatePhotosMutation($pet_id:String!, $photos:String!) {
      update_pets(where: {id: {_eq: $pet_id}, _set: {photos: $photos}) {
          affected_rows
        }
      }
  ''';
}
