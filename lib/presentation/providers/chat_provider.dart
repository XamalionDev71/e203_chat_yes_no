import 'package:e203_chat_yes_no/config/helper/get_yes_no_answer.dart';
import 'package:e203_chat_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Mensaje> listaMensajes = [];

  Future<void> respuestaMensaje() async {
    final respuesta = await getYesNoAnswer.getAnswer();
    listaMensajes.add(respuesta);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> enviarMensaje(String texto) async {
    if (texto.isEmpty) return;
    final nuevoMensaje = Mensaje(text: texto, fromWho: FromWho.emisor);
    listaMensajes.add(nuevoMensaje);
    if (texto.endsWith('?')) {
      respuestaMensaje();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async {
    await Future.delayed(Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
