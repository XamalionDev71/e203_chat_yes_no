import 'package:flutter/material.dart';

class MisMensajesBurbujas extends StatelessWidget {
  const MisMensajesBurbujas({super.key});

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
            child: Text('Flutter es mi pasión'),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

