import '../../../../../patas_exports.dart';

class AdoptionCubit extends SmartCubit<AdoptionEntity> {
  AdoptionCubit(this._getAdoptionsUseCase, this._updateAdoptionUseCase)
      : super(InitState<AdoptionEntity>(const AdoptionEntity()));

  final IGetAdoptionsUseCase _getAdoptionsUseCase;
  final IUpdateAdoptionUseCase _updateAdoptionUseCase;

  Future<void> init() async {
    setSubmit(true);
    final result = await _getAdoptionsUseCase.call(
        tutorId: 'f45d4148-4860-46b4-b76f-8cc09939c278');
    result.fold((error) => setError(error),
        (adoptions) => setSuccess(value: adoptions));
  }

  Future<void> updateAdoption(PetEntity petEntity, bool toAdopt) async {
    setSubmit(true);
    final result = await _updateAdoptionUseCase.call(
        updateAdoptionEntity: UpdateAdoptionEntity(
            tutorId: petEntity.tutor?.id,
            petId: petEntity.id,
            toAdopt: toAdopt));
    result.fold((error) => setError(error),
        (success) => setSuccess(value: state.value));
  }
}
