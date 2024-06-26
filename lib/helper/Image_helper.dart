import 'package:my_shoes/models/brand_model.dart';
import 'package:my_shoes/models/item_model.dart';

class ImageHelper {
  static const appIcon = 'assets/images/app_icon.png';
  static const nepalLogo = 'assets/images/nepal_logo.png';
  static const microsoft = 'assets/images/microsoft.jpg';
  static const homeBanner = 'assets/images/banner.png';
  static const midBanner = 'assets/images/mid_banner.png';
  static const map = 'assets/images/map.png';
  static const whatsapp = 'assets/images/whatsapp.png';
  static const linkedin = 'assets/images/linkedin.png';
  static const telegram = 'assets/images/telegram.png';
  static const darazLogo = 'assets/images/daraz_logo.png';
  static const aramexLogo = 'assets/images/aramex_logo.png';
  static const imepayLogo = 'assets/images/imepay_logo.png';
  static const onboarding_1 = 'assets/images/onboarding_1.jpg';
  static const onboarding_2 = 'assets/images/onboarding_2.jpg';
  static const onboarding_3 = 'assets/images/onboarding_3.jpg';
  static const onboarding_4 = 'assets/images/onboarding_4.jpg';

  static List<BrandModel> brands = [
    BrandModel(brandName: 'United', brandImage: 'assets/brand/united.png'),
    BrandModel(brandName: 'Converse', brandImage: 'assets/brand/converse.jpeg'),
    BrandModel(brandName: 'Nike', brandImage: 'assets/brand/nike.jpeg'),
    BrandModel(brandName: 'Puma', brandImage: 'assets/brand/puma.png'),
    BrandModel(brandName: 'Tory Burch', brandImage: 'assets/brand/tory.jpeg'),
    BrandModel(brandName: 'VANS', brandImage: 'assets/brand/vans.jpeg'),
  ];

  static List<ItemModel> items = [
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/11.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-912)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 3,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/12.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-909)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/13.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-901)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/14.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-901)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/15.png',
        itemFullName: 'United Real Leather Sportive Shoes For Men ( UT-910)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 3,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/16.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-951)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 1,999',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/17.png',
        itemFullName: 'United Real Leather Sport Shoes For Men (UT-909)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/18.png',
        itemFullName: 'United Real Leather Sport Shoes For Children (UT-901)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Women UT',
        itemImage: 'assets/shoes/19.png',
        itemFullName: 'United Real Leather Sport Shoes For Women (UT-551)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Women'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/20.png',
        itemFullName: 'United Real Leather Sportive Shoes For Men ( UT-910)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/21.png',
        itemFullName: 'United Real Leather Sportive Shoes For Men ( UT-903)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,499',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Men UT',
        itemImage: 'assets/shoes/22.png',
        itemFullName:
            'United Real Leather Sport sneakers Shoes For Men ( UT-906)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 2,999',
        itemCategories: 'Men'),
    ItemModel(
        itemName: 'Children UT',
        itemImage: 'assets/shoes/23.png',
        itemFullName: 'United Real Leather Sports Shoes For Children ( UT-921)',
        itemBrand: 'United Real Leather',
        itemPrice: 'Rs. 3,499',
        itemCategories: 'Children'),
  ];
}
