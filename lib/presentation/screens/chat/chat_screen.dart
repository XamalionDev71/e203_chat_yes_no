import 'package:e203_chat_yes_no/domain/entities/mensaje.dart';
import 'package:e203_chat_yes_no/presentation/providers/chat_provider.dart';
import 'package:e203_chat_yes_no/presentation/widgets/chat/mis_mensajes_burbujas.dart';
import 'package:e203_chat_yes_no/presentation/widgets/chat/respuestas_burbujas.dart';
import 'package:e203_chat_yes_no/presentation/widgets/shared/campo_mensaje.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://static.wikia.nocookie.net/ipod/images/c/cb/Jobs_hero20110329.png/revision/latest?cb=20200202110213',
            ),
          ),
        ),
        title: Center(child: Text('Mi Compadre Chambas!!')),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.listaMensajes.length,
                itemBuilder: (context, index) {
                  final mensaje = chatProvider.listaMensajes[index];
                  return (mensaje.fromWho == FromWho.emisor)
                      ? MisMensajesBurbujas(mensaje: mensaje)
                      : RespuestasBurbujas(mensaje: mensaje);
                },
              ),
            ),
            //Text('#TeamSistemas'),
            CampoMensaje(onValue: chatProvider.enviarMensaje),
          ],
        ),
      ),
    );
  }
}
