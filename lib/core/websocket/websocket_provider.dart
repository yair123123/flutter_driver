import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'websocket_service.dart';

final webSocketServiceProvider = Provider<WebSocketService>((ref) {
  return WebSocketService();
});
