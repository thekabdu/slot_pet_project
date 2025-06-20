// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductDetailHiveModelAdapter
    extends TypeAdapter<ProductDetailHiveModel> {
  @override
  final int typeId = 0;

  @override
  ProductDetailHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductDetailHiveModel(
      id: fields[0] as int,
      title: fields[1] as String?,
      image: fields[2] as String?,
      price: fields[3] as int?,
      brand: fields[4] as String?,
      model: fields[5] as String?,
      category: fields[6] as String?,
      description: fields[7] as String?,
      color: fields[8] as String?,
      discount: fields[9] as int?,
      popular: fields[10] as bool?,
      quantity: fields[11] as int,
      size: fields[12] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductDetailHiveModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.brand)
      ..writeByte(5)
      ..write(obj.model)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.color)
      ..writeByte(9)
      ..write(obj.discount)
      ..writeByte(10)
      ..write(obj.popular)
      ..writeByte(11)
      ..write(obj.quantity)
      ..writeByte(12)
      ..write(obj.size);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDetailHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
