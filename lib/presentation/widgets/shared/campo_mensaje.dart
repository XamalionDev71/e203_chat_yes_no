import 'package:flutter/material.dart';

class CampoMensaje extends StatelessWidget {
  final ValueChanged<String> onValue;

  const CampoMensaje({super.key, required this.onValue});

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
          textController.clear();
          onValue(textValue);
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
        textController.clear();
        focusNode.requestFocus();
        onValue(valor);
      },
    );
  }
}
