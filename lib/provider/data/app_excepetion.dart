class AppExcepetions implements Exception{
  // ignore: prefer_typing_uninitialized_variables
  final _message;
  // ignore: prefer_typing_uninitialized_variables
  final _prefix;
  AppExcepetions([this._message,this._prefix]);
  @override
  String toString(){
    return '$_prefix$_message';
  }
}
class FetchDataExcepetions extends AppExcepetions{
  FetchDataExcepetions([String? message]) :super(message,"Error during communications");
}
class BadRequestExcepetions extends AppExcepetions{
  BadRequestExcepetions([String? message]) :super(message,"invalid requests");
}

class UnauthorizedExcepetions extends AppExcepetions{
  UnauthorizedExcepetions([String? message]) :super(message,"unauthorized requests");
}

class InvalidinputExcepetions extends AppExcepetions{
   InvalidinputExcepetions ([String? message]) :super(message,"invalid input");
}