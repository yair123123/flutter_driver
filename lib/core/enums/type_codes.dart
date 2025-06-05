enum RideTypeCode { newRide, cancelRide, updateRide, giveRide }

const Map<RideTypeCode, int> rideTypeCodeValues = {
  RideTypeCode.newRide: 21,
  RideTypeCode.cancelRide: 22,
  RideTypeCode.updateRide: 23,
  RideTypeCode.giveRide: 24,
};

RideTypeCode? rideTypeCodeFromInt(int value) {
  return rideTypeCodeValues.entries.firstWhere((e) => e.value == value).key;
}

int rideTypeCodeToInt(RideTypeCode code) {
  return rideTypeCodeValues[code]!;
}

//-----------------------------------------------------------

enum ChatTypeCode { send, receive }

const Map<ChatTypeCode, int> chatTypeCodeValues = {
  ChatTypeCode.send: 21,
  ChatTypeCode.receive: 22,
};

ChatTypeCode? chatTypeCodeFromInt(int value) {
  return chatTypeCodeValues.entries.firstWhere((e) => e.value == value).key;
}

int chatTypeCodeToInt(ChatTypeCode code) {
  return chatTypeCodeValues[code]!;
}
