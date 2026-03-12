import 'package:dio/dio.dart';
import 'package:e203_chat_yes_no/domain/entities/mensaje.dart';
import 'package:e203_chat_yes_no/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Mensaje> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
