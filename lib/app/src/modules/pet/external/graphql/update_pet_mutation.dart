class UpdatePetMutation {
  static const String value = r'''
    mutation UpdatePetMutation($pet_id:String!, $name:String!, $sex:String!, $fur:String!, $breed:String!, $birth_date:Date!) {
      update_pets(where: {id: {_eq: $pet_id}}, _set: {birth_date: $birth_date, breed: $breed, fur: $fur, name: $name, sex: $sex}) {
        affected_rows
      }
    }
  ''';
}
