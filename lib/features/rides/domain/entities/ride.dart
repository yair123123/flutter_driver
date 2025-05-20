// To parse this JSON data, do
//
//     final ride = rideFromJson(jsonString);

import 'dart:convert';

Ride rideFromJson(String str) => Ride.fromJson(json.decode(str));

String rideToJson(Ride data) => json.encode(data.toJson());

class Ride {
    
    ///פרטי נסיעה כולל מיקום זמן ופרטים נוספים
    String details;
    
    ///מזהה של סדרן
    int dispatcherId;
    
    ///מזהה ייחודי לנסיעה
    int id;
    
    ///מזהה של תחנה
    int staionId;
    
    ///זמן יצירת הנסיעה
    DateTime timestamp;

    Ride({
        required this.details,
        required this.dispatcherId,
        required this.id,
        required this.staionId,
        required this.timestamp,
    });

    factory Ride.fromJson(Map<String, dynamic> json) => Ride(
        details: json["details"],
        dispatcherId: json["DispatcherId"],
        id: json["id"],
        staionId: json["StaionId"],
        timestamp: DateTime.parse(json["timestamp"]),
    );

    Map<String, dynamic> toJson() => {
        "details": details,
        "DispatcherId": dispatcherId,
        "id": id,
        "StaionId": staionId,
        "timestamp": timestamp.toIso8601String(),
    };
}
