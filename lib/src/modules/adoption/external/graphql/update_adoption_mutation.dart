class UpdateAdoptionMutation {
  static const String value = r'''
    mutation UpdateAdoptionMutation($pet_id:uuid!, $to_adopt:bool!) {
      update_pets(where: {id: {_eq: $pet_id}}, _set: {to_adopt: $to_adopt}) {
        affected_rows
      }
    }
  ''';
}
