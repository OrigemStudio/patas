class AddUserMutation {
  static const String value = r'''
  mutation MyMutation($id:String!, $email:String!, $phones:String!, $name:String!, $city:String!, $neighborhood:String!, $number:String!, $street:String!, $uf:String!) {
    insert_user(objects: {city: $city, email: $email, id: $id, name: $name, neighborhood: $neighborhood, number: $number, phones: $phones, street: $street, uf: $uf}) {
      returning {
        city
        email
        id
        name
        neighborhood
        number
        phones
        street
        uf
      }
    }
  }
  ''';
}
