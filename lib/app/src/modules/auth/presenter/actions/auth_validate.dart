class AuthValidate {
  static String? call(String? email, String? password) {
    if (email == null || email.length != 8) {
      return 'Mátricula inválida';
    } else if (password == null || password.length <= 6) {
      return 'Senha inválida';
    } else {
      return null;
    }
  }
}
