class AssetDetailModel {
  const AssetDetailModel(
      {required this.castCategory,
      required this.characteristics,
      required this.houseType,
      required this.rooms,
      required this.bedRooms,
      required this.livingSpace,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;
  final String castCategory;
  final String characteristics;
  final String houseType;
  final String rooms;
  final String bedRooms;
  final String livingSpace;
}
