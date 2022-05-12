class Hobby {
  String title;
  String urlToImage;
  String price;
  int starCount;

  Hobby({
    this.title,
    this.urlToImage,
    this.price,
    this.starCount,
  });
}

// 샘플 데이터
List<Hobby> hobbyList = [
  Hobby(
    title: '제봉',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true',
    starCount: 1,
    price: '10000',
  ),
  Hobby(
    title: '독서',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_6.jpg?raw=true',
    starCount: 3,
    price: '10000',
  ),
  Hobby(
    title: '캠핑',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_5.jpg?raw=true',
    starCount: 1,
    price: '100000',
  ),
  Hobby(
    title: '사진',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_4.jpg?raw=true',
    price: '0',
    starCount: 11,
  ),
  Hobby(
    title: '베이킹 ',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_3.jpg?raw=true',
    starCount: 7,
    price: '30000',
  ),
  Hobby(
    title: '코딩',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_2.jpg?raw=true',
    starCount : 4,
    price: '100000',
  ),
  Hobby(
    title: '카페 탐방',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_1.jpg?raw=true',
    starCount: 8,
    price: '10000',
  ),
];