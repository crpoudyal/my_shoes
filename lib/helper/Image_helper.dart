import 'package:my_shoes/models/item_model.dart';

class ImageHelper {
  static const appIcon = 'assets/images/app_icon.jpg';
  static const nepalLogo = 'assets/images/nepal_logo.png';
  static const microsoft = 'assets/images/microsoft.png';
  static const homeBanner = 'assets/images/banner.png';
  static const map = 'assets/images/map.png';
  static const whatsapp = 'assets/images/whatsapp_logo.jpeg';
  static const linkedin = 'assets/images/linkedin.png';
  static const telegram = 'assets/images/telegram.png';

  static const List<String> brandImages = [
    "assets/brand/united.png",
    "assets/brand/adidas.jpeg",
    "assets/brand/converse.jpeg",
    "assets/brand/nike.jpeg",
    "assets/brand/puma.png",
    "assets/brand/reebook.png",
    "assets/brand/tory.jpeg",
    "assets/brand/vans.jpeg",
    "assets/brand/reebook.png",
    "assets/brand/tory.jpeg",
    "assets/brand/vans.jpeg",
    "assets/brand/tory.jpeg",
    "assets/brand/vans.jpeg",
    "assets/brand/tory.jpeg",
  ];
  static List<ItemModel> items = [
    ItemModel(
        itemName: 'United (UT-906)',
        itemImage: 'assets/shoes/11.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-906)'),
    ItemModel(
        itemName: 'United (UT-909)',
        itemImage: 'assets/shoes/12.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-909)'),
    ItemModel(
        itemName: 'United (UT-901)',
        itemImage: 'assets/shoes/13.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-901)'),
    ItemModel(
        itemName: 'United (UT-901)',
        itemImage: 'assets/shoes/14.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-901)'),
    ItemModel(
        itemName: 'United (UT-901)',
        itemImage: 'assets/shoes/15.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-901)'),
  ];
  // static const Map<String, String> shoesImagesWithName = {
  //   "":
  //       "",
  //   "United Real Leather Sport Shoes For Men (UT-909)": "assets/shoes/12.png",
  //   "United Real Leather Sport Shoes For Men ( UT-901)": "assets/shoes/13.png",
  //   "United Real Leather Sport Shoes For Men 1( UT-901)": "assets/shoes/14.png",
  //   "United Real Leather Sport Shoes For Men 2( UT-901)": "assets/shoes/15.png",
  // };
}
