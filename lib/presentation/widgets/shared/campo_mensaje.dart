import 'package:flutter/material.dart';

class CampoMensaje extends StatelessWidget {
  const CampoMensaje({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'Termina tu mensaje con "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          print('boton: $textValue');
          textController.clear();
        },
        icon: Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      onTapOutside: (evento) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (valor) {
        print('Valor enviado: $valor');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}

