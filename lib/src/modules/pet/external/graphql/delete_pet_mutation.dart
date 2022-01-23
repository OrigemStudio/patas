class DeletePetMutation {
  static const String value = r'''
    mutation DeletePetMutation($pet_id:uuid!) {
      delete_pets(where: {id: {_eq: $pet_id}}) {
        affected_rows
      }
    }
  ''';
}
