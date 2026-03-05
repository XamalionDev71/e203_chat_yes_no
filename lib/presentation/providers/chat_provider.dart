import 'package:e203_chat_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Mensaje> listaMensajes = [
    Mensaje(text: 'Hola!!',fromWho: FromWho.emisor),
    Mensaje(text: '¿Cómo estas?', fromWho: FromWho.receptor)
  ];

  Future<void> enviarMensaje(String texto) async {
    //TODO: implementar método
    
  }
}
