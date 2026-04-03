import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
 static SharedPreferences? prefs;
  static Future<SharedPreferences?> init()async{
   prefs = await   SharedPreferences.getInstance();
   return prefs;
  }

  static bool? getBool(String key ){
        return prefs?.getBool(key);
  }
  static Future setBool(String key, bool value)async{
    return await prefs?.setBool(key, value);
  }
}