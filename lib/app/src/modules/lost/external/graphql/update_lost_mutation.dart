class UpdateLostMutation {
  static const String value = r'''
    mutation UpdateLostMutation($pet_id:uuid!, $is_lost:bool!) {
      update_pets(where: {id: {_eq: $pet_id}}, _set: {is_lost: $is_lost}) {
        affected_rows
      }
    }
  ''';
}
