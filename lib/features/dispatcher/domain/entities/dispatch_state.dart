import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/utils/json_util.dart';

class DispatchState {
  final Station station;
  final String rideDetails;
  final int indexCurrentLine;
  final List<String> cities;
  final Map<String, List<String>> neighborhoods;
  final bool isSending;
  final bool isLoading;
  final String errorMessage;

  DispatchState({
    required this.station,
    required this.isSending,
    required this.errorMessage,
    required this.rideDetails,
    required this.indexCurrentLine,
    required this.cities,
    required this.neighborhoods,
    required this.isLoading,
  });
  DispatchState copyWith({
    Station? station,
    String? rideDetails,
    int? indexCurrentLine,
    List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    bool? isSending,
    bool? isLoading,
    String? errorMessage,
  }) {
    return DispatchState(
      station: station ?? this.station,
      rideDetails: rideDetails ?? this.rideDetails,
      indexCurrentLine: indexCurrentLine ?? this.indexCurrentLine,
      cities: cities ?? this.cities,
      neighborhoods: neighborhoods ?? this.neighborhoods,
      isSending: isSending ?? this.isSending,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
   static Future<DispatchState>  initial(User user) async {
    List<String> cities = await loadJsonList("cities.json") ;
    Map<String,List<String> >neighborhoods = await loadJsonMap("neighborhoods.json") ;
    return DispatchState(
      station: user.dispatcher_stations[0],
      rideDetails: "",
      indexCurrentLine:0,
      cities: cities ,
      neighborhoods: neighborhoods,
      isSending: false,
      isLoading: false,
      errorMessage: "",
    );
  }
}
