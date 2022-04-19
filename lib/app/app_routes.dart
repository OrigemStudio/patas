class AppRoutes {
  static const String root = '/';
  static const String auth = '/auth';
  static const String splash = '/';
  static const String register = '/auth/register';
  static const String resetPassword = '/login/reset_password';
  static const String adoption = '/home/adoption';
  static const String registerAddress = '/auth/register/address';
  static const String editAddress = '/home/profile/address';
  static const String complaint = '/home/complaint';
  static const String find = 'find/';
  static const String health = '/home/pet/health';
  static const String home = '/home/';
  static const String lost = '/home/lost';
  static const String myPets = 'my_pets';
  static const String myPet = '/home/my_pets/pet';
  static const String pet = 'pet/';
  static String petId({required String id}) => 'pet/$id';
}
