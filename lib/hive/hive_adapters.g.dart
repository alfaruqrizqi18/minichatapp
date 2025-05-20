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
      email: fields[3] == null ? "" : fields[3] as String,
      name: fields[4] == null ? "" : fields[4] as String,
      uid: fields[5] == null ? "" : fields[5] as String,
      photoUrl: fields[6] == null ? "" : fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.isDarkMode)
      ..writeByte(1)
      ..write(obj.isLoggedIn)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.uid)
      ..writeByte(6)
      ..write(obj.photoUrl);
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
