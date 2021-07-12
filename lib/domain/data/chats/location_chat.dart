import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'location_chat.freezed.dart';

@freezed
abstract class LocationChat implements _$LocationChat {
  const LocationChat._();

  const factory LocationChat({
    required String uuid,
    required String lastMessage,
    required String lastSenderId,
    required Title chatTitle,
    required String timestamp,
    required double longitude,
    required double latitude,
  }) = _LocationChat;

  factory LocationChat.empty() => LocationChat(
        uuid: UniqueId('').getOrCrash(),
        lastMessage: '',
        lastSenderId: '',
        chatTitle: Title(''),
        timestamp: '',
        longitude: 0,
        latitude: 0,
      );
}
