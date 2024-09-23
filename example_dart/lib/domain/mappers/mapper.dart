abstract interface class Mapper<T> {
  T toMapper(json);
}

abstract base class ListMapper<T> implements Mapper<T> {
  List<T> toListMapper(List<dynamic> jsonList) =>
      jsonList.map<T>((it) => toMapper(it)).toList();
}

abstract interface class HttpGetMapper {
  Future<dynamic> get({required String url, required Mapper mapper});
}
