enum RequestMethod{
  get,
  post,
  put,
  patch,
  delete,
}

extension GetString on RequestMethod{
  String get requestMethodAsString => name.toUpperCase();
}