import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:talabatytask/order/order.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int count =0;
  final List<String> listImages = [
    'https://i0.wp.com/assets.preprod.foodnetwork.ca/wp-content/uploads/2022/01/FNC_OGImage_Taiwanese-Beef-Noodle-Soup.jpg',
    'https://i2.wp.com/girlspics.cc/wp-content/uploads/2018/08/6370-1.jpg',
    'https://setaat.com/storage/uploads/max_uploads/2019/09/1569266918.webp',
    'https://vid.alarabiya.net/images/2021/07/22/4d08f58c-6d36-4619-a553-9db208c64b42/4d08f58c-6d36-4619-a553-9db208c64b42.jpg?crop=4:3&width=1200',
    'https://2img.net/h/professorherm.files.wordpress.com/2009/12/090204_supermarket_savings.jpg',
    'https://www.aljamila.com/sites/default/files/styles/640x426/public/2020-12/3828711-1291730808.jpg?h=50844e28',
    'https://s3-eu-west-1.amazonaws.com/elmenusv5-stg/Normal/29244350-6492-4c36-a4f6-53d40f7d5e99.jpg',
    'https://www.taw3ia.com/wp-content/uploads/2020/02/%D9%81%D9%88%D8%A7%D8%A6%D8%AF-%D8%A7%D9%84%D9%85%D9%83%D8%B3%D8%B1%D8%A7%D8%AA-%D8%A7%D9%84%D8%B5%D8%AD%D9%8A%D8%A9.jpg',
  ];
  int a=1;

    List<String> listName = [
     'المطاعم',
    'بلوشي',
    'حلويات و معجنات',
    'اللحوم',
    'ماركت',
    'بحريه',
    'دايت فود',
    'الكرزات'
  ];
    List<String> optionname =[
      'الكل',
      'خصومات',
      'يدعم المحفضه',
      'توصيل طلباتي',
      'توصيل مجاني',
      'حصري',
      'جديد'
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 30,
              color: Colors.grey,
            ),
            Text(
              "العامرية",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'baloo'),
            ),
            SizedBox(width: 29),
          ],
        ),
        actions: [
          Icon(
            Icons.notifications_none_outlined,
            size: 35,
            color: Colors.black,
          ),
        ],
        leading: Icon(
          Icons.search_outlined,
          size: 35,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index){
                return mainList(
                    listImages[index],
                    listName[index]
                );
              }
            ),
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "المحلات القريبه",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontFamily: 'baloo'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "المحلات الاكثر شيوعا",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontFamily: 'baloo'),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 140,
                                  width: MediaQuery.of(context).size.width - 30,
                                  margin: const EdgeInsets.symmetric(horizontal: 0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          fit: BoxFit.cover, image: NetworkImage("https://i0.wp.com/modo3.com/thumbs/fit630x300/51334/1435144381/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B9%D9%85%D9%84_%D8%B9%D8%AC%D9%8A%D9%86%D8%A9_%D8%A7%D9%84%D8%A8%D9%8A%D8%AA%D8%B2%D8%A7_%D8%A7%D9%84%D8%A5%D9%8A%D8%B7%D8%A7%D9%84%D9%8A%D8%A9.jpg"))),
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  left: 25,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7.0, vertical: 3),
                                      child: Text(
                                        "بروموكود",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17,
                                            color: Colors.red,
                                            fontFamily: 'baloo'),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 38,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                            itemCount: 7,
                            itemBuilder: (BuildContext context, int index){
                            return list(optionname[index]);
                            }
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      eat("https://www.ngmisr.com/wp-content/uploads/2022/01/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D9%85%D9%86%D8%AF%D9%8A-%D8%A7%D9%84%D9%84%D8%AD%D9%85-%D9%82.jpg",
                          "مندي المكارم",
                          "سعى التوصيل: 2,500 د.ع",
                          "العامريه",
                          "جيد جدا"
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      eat(
                          "https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/Falafel-with-humos-ar14092020.jpg",
                          "ايت اند كو",
                          "التوصيل مجاني",
                          "العامريه",
                          "جيد جدا"),
                      SizedBox(
                        height: 10,
                      ),
                      eat("https://modo3.com/thumbs/fit630x300/69226/1637556361/%D8%A3%D9%8A%D9%86_%D8%B5%D9%86%D8%B9%D8%AA_%D8%A7%D9%84%D8%A8%D9%8A%D8%AA%D8%B2%D8%A7_%D8%A3%D9%88%D9%84_%D9%85%D8%B1%D8%A9.jpg",
                          "حتوته",
                          "سعى التوصيل: 2,500 د.ع",
                          "العامريه",
                          "جيد جدا"
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      eat(
                          "https://modo3.com/thumbs/fit630x300/3945/1589755867/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B9%D9%85%D9%84_%D8%A7%D9%84%D9%87%D9%85%D8%A8%D8%B1%D8%AC%D8%B1_%D9%81%D9%8A_%D8%A7%D9%84%D8%A8%D9%8A%D8%AA.jpg",
                          "برجرات",
                          "سعر التوصيل: 4,500 د.ع",
                          "المنصور",
                          "جيد جدا"),
                      SizedBox(
                        height: 10,
                      ),
                      eat("https://modo3.com/thumbs/fit630x300/3698/1589744805/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B9%D9%85%D9%84_%D8%B4%D8%A7%D9%88%D8%B1%D9%85%D8%A7_%D8%A7%D9%84%D8%AF%D8%AC%D8%A7%D8%AC_%D8%A8%D8%A7%D9%84%D8%A8%D9%8A%D8%AA.jpg",
                          " الشاورما",
                          "سعى التوصيل: 3,000 د.ع",
                          "الغزاليه",
                          "جيد جدا"
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      eat("https://static.webteb.net/images/content/tbl_articles_article_20802_17704ac813f-bead-457f-aab2-282683793a46.jpg",
                          "شيبك",
                          "سعى التوصيل: 4,500 د.ع",
                          "اليرموك",
                          "جيد جدا"
                      ),
                    ],
                  );
                }

              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding mainList(String url , String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(url))),
          ),
          Text(name,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
                fontFamily: 'baloo'),
          )
        ],
      ),
    );
  }

  Container list(String listname) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          listname,
          style:
              TextStyle(fontSize: 15, color: Colors.black, fontFamily: 'baloo'),
        ),
      ),
    );
  }

  Column eat(
      String url, String type, String price, String location, String rank) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          child:  Stack(
            children: [
              Center(
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width - 30,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(url))),
                ),
              ),
              Positioned(
                  top: 10,
                  left: 25,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7.0, vertical: 3),
                      child: Text(
                        "حصري",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'baloo'),
                      ),
                    ),
                  ))
            ],
          ),
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>order()
                )
            );
          },
        ),
        Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 68,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: Colors.grey.withOpacity(0.6),
                          fontFamily: 'baloo'),
                    ),
                    Text(
                      type,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.red,
                          fontFamily: 'baloo'),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          rank,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: Colors.grey.withOpacity(0.6),
                              fontFamily: 'baloo'),
                        ),
                        Icon(
                          Icons.sentiment_satisfied,
                          size: 25,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        children: [
                          Text(
                            location,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: Colors.grey.withOpacity(0.6),
                                fontFamily: 'baloo'),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

}
