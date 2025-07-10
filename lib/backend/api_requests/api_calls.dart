// Importa pacotes essenciais para fazer chamadas HTTP e para as utilidades do FlutterFlow.
import 'dart:convert';
import 'package.http/http.dart' as http;
import '../../flutter_flow/flutter_flow_util.dart';

// Classe que encapsula a chamada para a SuperHero API.
class ApiHeroCall {
  // O método estático 'call' que será chamado de outras partes do app.
  static Future<ApiCallResponse> call({
    String? name = '', // Parâmetro para buscar o herói pelo nome.
  }) async {
    
    // IMPORTANTE: Substitua 'SEU_TOKEN_DE_ACESSO_AQUI' pelo seu token real da SuperHero API.
    const String apiToken = 'SEU_TOKEN_DE_ACESSO_AQUI'; 
    final String apiUrl = 'https://superheroapi.com/api/$apiToken/search/${name}';

    // Realiza a chamada HTTP do tipo GET para a URL da API.
    final response = await http.get(Uri.parse(apiUrl));
    
    // Retorna o resultado encapsulado na classe ApiCallResponse do FlutterFlow.
    return ApiCallResponse.fromHttpResponse(response, true);
  }
}