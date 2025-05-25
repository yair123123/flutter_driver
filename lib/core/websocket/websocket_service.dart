import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef WebSocketMessageHandler = void Function(Map<String, dynamic> message);

class WebSocketService {
  WebSocketChannel? _channel;
  late final StreamController<dynamic> _controller;
  bool _isConnected = false;
  WebSocketService() {
    _controller = StreamController.broadcast();
  }
  Stream<dynamic> get stream => _controller.stream;
  bool get isConnected => _isConnected;
  void connect(String url, String token) {
    if (_isConnected) return;
    _channel = WebSocketChannel.connect(Uri.parse("$url/$token"));
    _isConnected = true;

    _channel!.stream.listen(
      (rawMessage) {
        _controller.add(rawMessage);
      },
      onError: (e) => _controller.addError(e),
      onDone: () {
        _isConnected = false;
        _controller.add('disconnected');
      },
    );
  }

  void send(dynamic message) {
    _channel?.sink.add(message is String ? message : jsonEncode(message));
  }

  void disconnect() {
    if (_channel != null) {
      _channel?.sink.close();
      _channel = null;
    }
  }
}
