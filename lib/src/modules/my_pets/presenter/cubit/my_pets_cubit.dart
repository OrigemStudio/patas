import '../../../../../patas_exports.dart';

class MyPetsCubit extends SmartCubit<MyPetsEntity> {
  MyPetsCubit(this._myPetsUseCase)
      : super(InitState<MyPetsEntity>(const MyPetsEntity()));

  final IGetMyPetsUseCase _myPetsUseCase;

  Future<void> init() async {
    setSubmit(true);
    final result = await _myPetsUseCase.call(
        tutorId: 'f45d4148-4860-46b4-b76f-8cc09939c278');
    result.fold(
        (error) => setError(error), (myPets) => setSuccess(value: myPets));
  }
}
