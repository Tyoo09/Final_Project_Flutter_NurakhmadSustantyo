import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static const String apiKey = _Env.apiKey;
}