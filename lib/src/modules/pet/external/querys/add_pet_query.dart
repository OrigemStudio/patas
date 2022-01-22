class AddPetQuery {
  static const String value = r'''
    mutation AddPetQuery($pet_id:uuid!, $name:String!, $sex:String!, $tutor_id:String!, $photos:String!, $fur:String!, $breed:String!, $birth_date:Date!) {
      insert_pets(objects: {id: $pet_id, name: $name, sex: $sex, tutor_id: $tutor_id, photos: $photos, fur: $fur, breed: $breed, birth_date: $birth_date}) {
        affected_rows
      }
    }
  ''';
}
