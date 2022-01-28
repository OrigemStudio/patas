import '../../../../../../patas_exports.dart';

class PetCubit extends SmartCubit<PetEntity> {
  PetCubit(this._addPetUseCase, this._deletePetUseCase, this._getPetUseCase,
      this._updatePetUseCase)
      : super(InitState<PetEntity>(const PetEntity()));

  final IAddPetUseCase _addPetUseCase;
  final IDeletePetUseCase _deletePetUseCase;
  final IGetPetUseCase _getPetUseCase;
  final IUpdatePetUseCase _updatePetUseCase;

  Future<void> init() async {
    setSubmit(true);
    final result = await _getPetUseCase.call(
        petId: 'f45d4148-4860-46b4-b76f-8cc09939c278');
    result.fold((error) => setError(error), (pet) => setSuccess(value: pet));
  }

  Future<void> onSubmit(bool isAdd) async {
    setSubmit(true);
    if (isAdd) {
      final result = await _addPetUseCase.call(petEntity: state.value);
      result.fold((error) => setError(error),
          (success) => setSuccess(value: state.value));
    } else {
      final result = await _updatePetUseCase.call(petEntity: state.value);
      result.fold((error) => setError(error),
          (success) => setSuccess(value: state.value));
    }
  }

  Future<void> delete() async {
    setSubmit(true);
    final result = await _deletePetUseCase.call(
        petId: 'f45d4148-4860-46b4-b76f-8cc09939c278');
    result.fold((error) => setError(error), (success) => success);
  }
}
