// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class AppModelAdapter extends TypeAdapter<AppModel> {
  @override
  final typeId = 0;

  @override
  AppModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppModel(
      isDarkMode: fields[0] == null ? false : fields[0] as bool,
      isLoggedIn: fields[1] == null ? false : fields[1] as bool,
      currentUser: fields[2] as User?,
    );
  }

  @override
  void write(BinaryWriter writer, AppModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isDarkMode)
      ..writeByte(1)
      ..write(obj.isLoggedIn)
      ..writeByte(2)
      ..write(obj.currentUser);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
