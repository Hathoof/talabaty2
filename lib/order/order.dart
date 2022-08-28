import 'package:flutter/material.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int number = 1;
  int price = 15000;
  int y =1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.7elwa.com/sites/default/files/styles/edge_to_edge/public/images/editor/77188de0a458c6a8838490926e77f242_Chicken-Mandi.jpg?h=4f5b30f1"))
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.arrow_forward,size: 35,color: Colors.black,),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("مندي المكارم",
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                  fontFamily: 'baloo'),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text("جيد جدا",
                            style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontFamily: 'baloo'),),
                          SizedBox(width: 5,),
                          Icon(Icons.mood_outlined,size: 25,color: Colors.black54),
                        ],
                      ),
                      Row(
                        children: [
                          Text("الحد الادنى للطلب 5,000 د . ع",
                            style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontFamily: 'baloo'),),
                          SizedBox(width: 5,),
                          Icon(Icons.local_atm_outlined,size: 25,color: Colors.black54),
                        ],
                      ),
                    ],
                  ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text("سعر التوصيل : 2500 د . ع",
                              style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontFamily: 'baloo'),),
                            SizedBox(width: 5,),
                            Icon(Icons.local_shipping_outlined,size: 25,color: Colors.black54),
                          ],
                        ),
                        Row(
                          children: [
                            Text("العامريه",
                              style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontFamily: 'baloo'),),
                            SizedBox(width: 5,),
                            Icon(Icons.location_on_outlined,size: 25,color: Colors.black54),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 106.0),
                  child: Row(
                    children: [
                      Text("وقت التوصيل المتوقع بين ساعا الى ساعا ونصف",
                        style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'baloo'),),
                      SizedBox(width: 5,),
                      Icon(Icons.schedule_outlined,size: 25,color: Colors.black54),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Stack(
                  children: [
                    Text("طبق مندي دجاج",
                      style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontFamily: 'baloo'),),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,left: 65),
                      child: Text("مع المقبلات",
                        style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'baloo'),),
                    ),
                  ],
                ),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(top:0),
                  child: Text("تعليقات خاصه",
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontFamily: 'baloo'),),
                ),
                Center(
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width-30,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text("اذا كان لديك اي ملاحظات تخص الطلب يرجى الكتابه هنا",
                          style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontFamily: 'baloo'),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    child:  GestureDetector(
                      child: Icon(Icons.add,size: 40,color: Colors.black,),
                      onTap: (){
                        setState(() {
                          number=number+1;
                          y++;
                          price = price + 15000;
                        });
                      },

                    )
                  ),
                    SizedBox(width: 20,),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color : Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(25),

                      ),
                      child: Center(
                        child: Text("$number",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      )
                    ),
                    SizedBox(width: 20,),
                    (number>0)?
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      child:  GestureDetector(
                        child:
                        Icon(Icons.remove,size: 40,color: Colors.black,),
                        onTap: (){
                          setState(() {
                            number=number-1;
                            y--;
                            price = price - 15000;
                          });
                        },

                      )
                    )
                :CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      child: Icon(Icons.remove,size: 40,color: Colors.grey,),
                    )
                  ],
                ),
                Center(
                  child: Text("$price د . ع ",
                    style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontFamily: 'baloo'),),
                ),
                SizedBox(height: 80,),
                Center(
                  child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width-40,
                      decoration: BoxDecoration(
                        color : Colors.red,
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Center(
                        child: Text("اضف للسله",
                          style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                          fontFamily: 'baloo',
                          color: Colors.white),),
                      )
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
