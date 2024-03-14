import 'package:shared_preferences/shared_preferences.dart';

class SessionManager{
  int? value;
  String? idUser, fullname, userName, email;

  Future<void> saveSession(int val, String id, String userName,
      String fullname) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("value", val);
    pref.setString("id", id);
    pref.setString("userName", userName);
    pref.setString("fullname", fullname);
    // pref.setString("email", email);
  }

  Future getSession() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getInt("value");
    pref.getString("id");
    pref.getString("userName");
    pref.getString("fullname");
    pref.getString("email");
    return value;
  }

  Future getSessionIdUser() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getInt("value");
    pref.getString("id");
    return idUser;
  }

  //logout
  Future clearSession() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}

SessionManager session = SessionManager();