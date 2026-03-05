import 'package:e203_chat_yes_no/presentation/widgets/chat/mis_mensajes_burbujas.dart';
import 'package:e203_chat_yes_no/presentation/widgets/chat/respuestas_burbujas.dart';
import 'package:e203_chat_yes_no/presentation/widgets/shared/campo_mensaje.dart';
import 'package:flutter/material.dart';

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
        title: Center(child: Text('Hola')),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? RespuestasBurbujas()
                      : MisMensajesBurbujas();
                },
              ),
            ),
            //Text('#TeamSistemas'),
            CampoMensaje(),
          ],
        ),
      ),
    );
  }
}
