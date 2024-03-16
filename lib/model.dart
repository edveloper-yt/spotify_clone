class ItemModel {
  final String image;
  final String text;

  ItemModel({required this.image, required this.text});
}

class LibraryModel {
  final String image;
  final String title;
  final String subtitle;
  final String? subtitleImage;

  LibraryModel({
    required this.image,
    required this.title,
    required this.subtitle,
    this.subtitleImage,
  });
}
