import 'package:driver_app/features/rides/domain/entities/ride.dart';
import 'package:flutter/material.dart';

class RidesListProvider extends ChangeNotifier{
Set<Ride>? _rides;
Set<Ride>? get rides => _rides;

}