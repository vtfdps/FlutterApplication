import 'package:web_socket_channel/web_socket_channel.dart';

class MyWebSocket {
  WebSocketChannel channel =
      WebSocketChannel.connect(Uri.parse('wss://echo.websocket.events'));

  MyWebSocket() {
    channel =
        WebSocketChannel.connect(Uri.parse('wss://echo.websocket.events'));

    channel.stream.listen((message) {
      print('Received: $message');
    }, onError: (error) {
      print('Error: $error');
    }, onDone: () {
      print('Websocket connection closed');
    });
  }

  void sendMessage(String message) async {
    channel.sink.add(message);
  }

  void closeConnection() {
    channel.sink.close();
  }
}
