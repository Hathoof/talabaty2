import 'package:flutter/material.dart';
import 'package:talabatytask/loginpage/login.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
      SafeArea(
      minimum: EdgeInsets.only(top: 100),
        child: Center(
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/IMG_5390.PNG"))),
          ),
        )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(15),
                      ),
                  child:
                      Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "اختر اللغه",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      fontFamily: 'baloo',
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.language,
                                  size: 26,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width - 50,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "عن طلباتي",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      fontFamily: 'baloo',
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.info_outline,
                                  size: 26,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width - 50,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                            GestureDetector(
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "تسجيل دخول",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'baloo',
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.login,
                                    size: 26,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>login()
                                    )
                                );
                              },
                            ),
                          ],
                        ),)

                ),
              )),
        ],
      ),
    );
  }

}
