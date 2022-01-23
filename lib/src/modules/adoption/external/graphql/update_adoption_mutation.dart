class UpdateAdoptionMutation {
  static const String value = r'''
    mutation UpdateAdoptionMutation($pet_id:String!, $toAdopt:bool!) {
      update_pets(where: {id: {_eq: $pet_id}}, _set: {toAdopt: $toAdopt}) {
        affected_rows
      }
    }
  ''';
}
