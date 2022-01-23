class GetAdoptionsQuery {
  static const String value = r'''
    query GetAdoptionMutation {
      pets(where: {toAdopt: {_eq: true}}}) {
        name
        photos
        sex
        breed
        birth_date
        id
        user {
          id
          phone
        }
      }
    }
  ''';
}
