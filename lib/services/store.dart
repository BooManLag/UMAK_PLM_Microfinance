import 'package:hive/hive.dart';

class Store{
  static const storeBox = '_storeBox';
  static const transac = 'transaction';

  late final Box<dynamic> _box;

  Store(){
    _box = Hive.box(storeBox);
  }

  Future<T?> getValue<T>(Object key, {T? defaultValue}) async => await _box.get(
    key,
    defaultValue: defaultValue
  ) as T?;

  Future<void> setValue<T>(Object key, T value) async => await _box.put(key, value);

  Future<void> deleteValue<T>(Object key) async => await _box.delete(key);

  Future<void> clearAll() async => await _box.clear();
}