import 'package:e203_chat_yes_no/domain/entities/mensaje.dart';

class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
    answer: json['answer'],
    forced: json['forced'],
    image: json['image'],
  );

  Mensaje toMessageEntity() => Mensaje(
    text: answer=='yes'?'Si':'No', 
    fromWho: FromWho.receptor,
    imageUrl: image
  );
}
