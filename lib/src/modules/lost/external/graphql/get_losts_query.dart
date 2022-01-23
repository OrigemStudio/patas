class GetLostsQuery {
  static const String value = r'''
    query GetLostMutation {
      pets(where: {is_lost: {_eq: true}}}) {
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
