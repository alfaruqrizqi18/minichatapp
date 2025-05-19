class ResponseState {
  bool success;
  String error;
  dynamic data;

  ResponseState({this.success = false, this.error = "", this.data = ""});
}