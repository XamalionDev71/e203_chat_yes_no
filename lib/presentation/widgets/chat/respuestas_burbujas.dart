import 'package:e203_chat_yes_no/domain/entities/mensaje.dart';
import 'package:flutter/material.dart';

class RespuestasBurbujas extends StatelessWidget {
  final Mensaje mensaje;

  const RespuestasBurbujas({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(mensaje.text, style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 10),
        _ImagenBurbuja(mensaje.imageUrl!),
        SizedBox(height: 10),
      ],
    );
  }
}

class _ImagenBurbuja extends StatelessWidget {
  final String imageUrl;

  const _ImagenBurbuja(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.5,
        height: 100,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Recibiendo imagen...'),
          );
        },
      ),
    );
  }
}
