import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/routine/routine_cbj_entity.dart';
import 'package:cybear_jinni/domain/routine/value_objects_routine_cbj.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_cbj_dtos.freezed.dart';
part 'routine_cbj_dtos.g.dart';

@freezed
abstract class RoutineCbjDtos implements _$RoutineCbjDtos {
  factory RoutineCbjDtos({
    // @JsonKey(ignore: true)
    required String uniqueId,
    required String name,
    required String backgroundColor,
    required String? deviceStateGRPC,
    required String? senderDeviceOs,
    required String? senderDeviceModel,
    required String? senderId,
    required String? compUuid,
    required String? stateMassage,
    required String? repeateType,
    required List<String>? repeateDateDays,
    required String? repeateDateHour,
    required String? repeateDateMinute,
    String? automationString,
    String? firstNodeId,
    String? iconCodePoint,
    String? image,
    String? lastDateOfExecute,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _RoutineCbjDtos;

  RoutineCbjDtos._();

  factory RoutineCbjDtos.fromDomain(RoutineCbjEntity routineCbj) {
    return RoutineCbjDtos(
      uniqueId: routineCbj.uniqueId.getOrCrash(),
      name: routineCbj.name.getOrCrash(),
      backgroundColor: routineCbj.backgroundColor.getOrCrash(),
      automationString: routineCbj.automationString.getOrCrash(),
      firstNodeId: routineCbj.firstNodeId.getOrCrash(),
      iconCodePoint: routineCbj.iconCodePoint.getOrCrash(),
      image: routineCbj.image.getOrCrash(),
      lastDateOfExecute: routineCbj.lastDateOfExecute.getOrCrash(),
      deviceStateGRPC: routineCbj.deviceStateGRPC.getOrCrash(),
      senderDeviceModel: routineCbj.senderDeviceModel.getOrCrash(),
      senderDeviceOs: routineCbj.senderDeviceOs.getOrCrash(),
      senderId: routineCbj.senderId.getOrCrash(),
      compUuid: routineCbj.compUuid.getOrCrash(),
      stateMassage: routineCbj.stateMassage.getOrCrash(),
      repeateType: routineCbj.repeateType.getOrCrash(),
      repeateDateDays: routineCbj.repeateDateDays.getOrCrash(),
      repeateDateHour: routineCbj.repeateDateHour.getOrCrash(),
      repeateDateMinute: routineCbj.repeateDateMinute.getOrCrash(),

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory RoutineCbjDtos.fromJson(Map<String, dynamic> json) =>
      _$RoutineCbjDtosFromJson(json);

  final String deviceDtoClassInstance = (RoutineCbjDtos).toString();

  RoutineCbjEntity toDomain() {
    return RoutineCbjEntity(
      uniqueId: UniqueId.fromUniqueString(uniqueId),
      name: RoutineCbjName(name),
      backgroundColor: RoutineCbjBackgroundColor(backgroundColor),
      automationString: RoutineCbjAutomationString(automationString),
      firstNodeId: RoutineCbjFirstNodeId(firstNodeId),
      iconCodePoint: RoutineCbjIconCodePoint(iconCodePoint),
      image: RoutineCbjBackgroundImage(image),
      lastDateOfExecute: RoutineCbjLastDateOfExecute(lastDateOfExecute),
      deviceStateGRPC: RoutineCbjDeviceStateGRPC(deviceStateGRPC),
      senderDeviceModel: RoutineCbjSenderDeviceModel(senderDeviceModel),
      senderDeviceOs: RoutineCbjSenderDeviceOs(senderDeviceOs),
      senderId: RoutineCbjSenderId(senderId),
      compUuid: RoutineCbjCompUuid(compUuid),
      stateMassage: RoutineCbjStateMassage(stateMassage),
      repeateType: RoutineCbjRepeatType(repeateType),
      repeateDateDays: RoutineCbjRepeatDateDays(repeateDateDays),
      repeateDateHour: RoutineCbjRepeatDateHour(repeateDateHour),
      repeateDateMinute: RoutineCbjRepeatDateMinute(repeateDateMinute),
    );
  }
}
