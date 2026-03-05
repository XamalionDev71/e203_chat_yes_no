import 'package:flutter/material.dart';

class RespuestasBurbujas extends StatelessWidget {
  const RespuestasBurbujas({super.key});

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
            child: Text(
              'Hola Mundo de Flutter',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 10),
        _ImagenBurbuja(),
        SizedBox(height: 10),
      ],
    );
  }
}

class _ImagenBurbuja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/yes/4-c53643ecec77153eefb461e053fb4947.gif",
        width: size.width * 0.5,
        height: 100,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width*0.7,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Recibiendo imagen...'),
          );
        },
      ),
    );
  }
}
