class GetUserQuery {
  static const String value = r'''
      query GetUserQuery($id:String!) {
         user(where: {id: {_eq: $id}}) {
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
    ''';
}
