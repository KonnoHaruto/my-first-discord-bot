import 'package:nyxx/nyxx.dart';

void main() {
  final bot = NyxxFactory.createNyxxWebsocket(
      "TOKEN", GatewayIntents.allUnprivileged | GatewayIntents.messageContent);

  bot.eventsWs.onMessageReceived.listen((event) {
    if (event.message.content == "!ping") {
      event.message.channel.sendMessage(
        MessageBuilder.content('Pong!'),
      );
    }
  });
  bot.connect();
}
