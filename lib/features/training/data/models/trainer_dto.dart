import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/trainer.dart';

part 'trainer_dto.freezed.dart';
part 'trainer_dto.g.dart';

@freezed
abstract class TrainerListDto with _$TrainerListDto {
  const factory TrainerListDto({
    @Default(<TrainerDto>[]) List<TrainerDto> trainers,
  }) = _TrainerListDto;

  factory TrainerListDto.fromJson(Map<String, dynamic> json) =>
      _$TrainerListDtoFromJson(json);
}

@freezed
abstract class TrainerDto with _$TrainerDto {
  const TrainerDto._();

  const factory TrainerDto({
    required String id,
    @Default('훈련사') String nameKo,
    @Default('⚔️') String icon,
    @Default('') String mapId,
    @Default('') String description,
    @Default(TrainerDialoguesDto()) TrainerDialoguesDto dialogues,
  }) = _TrainerDto;

  factory TrainerDto.fromJson(Map<String, dynamic> json) =>
      _$TrainerDtoFromJson(json);

  Trainer toEntity() => Trainer(
        id: id,
        nameKo: nameKo,
        icon: icon,
        mapId: mapId,
        description: description,
        dialogues: TrainerDialogues(
          greeting: dialogues.greeting,
          train: dialogues.train,
          success: dialogues.success,
          notEnoughGold: dialogues.notEnoughGold,
          farewell: dialogues.farewell,
        ),
      );
}

@freezed
abstract class TrainerDialoguesDto with _$TrainerDialoguesDto {
  const factory TrainerDialoguesDto({
    @Default('훈련하러 왔나?') String greeting,
    @Default('집중해!') String train,
    @Default('잘했어.') String success,
    @Default('훈련에도 비용이 든다네.') String notEnoughGold,
    @Default('꾸준히 훈련하게.') String farewell,
  }) = _TrainerDialoguesDto;

  factory TrainerDialoguesDto.fromJson(Map<String, dynamic> json) =>
      _$TrainerDialoguesDtoFromJson(json);
}
