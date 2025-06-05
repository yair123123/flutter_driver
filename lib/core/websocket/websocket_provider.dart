import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/core/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'websocket_service.dart';

final webSocketServiceProvider = Provider<WebSocketService>((ref) {
  final service = WebSocketService(); 
  String? token = ref.read(authProvider).token;
  if (token != null) {
  service.connect(Env.websocketUrl, token); 
  } else {
    throw Exception("Token is null, cannot connect to WebSocket");
  }
  ref.onDispose(() {
    service.dispose();
  });
  return service;
    });
  
