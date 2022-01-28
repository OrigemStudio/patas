class GetUser {
  static const String query = r'''
      query GetUser {
        user {
          email
          id
          name
          phones
        }
      }
    ''';
}
