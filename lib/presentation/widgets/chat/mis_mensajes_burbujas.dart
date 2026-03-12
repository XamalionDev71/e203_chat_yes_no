import 'package:e203_chat_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';

class MisMensajesBurbujas extends StatelessWidget {
  final Mensaje mensaje;

  const MisMensajesBurbujas({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(mensaje.text),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
