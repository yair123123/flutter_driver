import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:flutter/material.dart';

class StationChatScreen extends StatelessWidget {
  final Station station; 
  
  const StationChatScreen({super.key,required this.station});
  @override
  Widget build(context){

    return Scaffold(
      appBar: AppBar(
        title: Text(station.station_name),
        
      )
      // body: ListView.builder(
      //   itemCount: rides.length,
      //   itemBuilder: (context,index) => {
      // }
      );

  }
}