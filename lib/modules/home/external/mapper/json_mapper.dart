abstract class JsonMapper<T> {
  Map<String, dynamic> toMap(T entities);

  T fromMap(Map<String, dynamic> map);
}
