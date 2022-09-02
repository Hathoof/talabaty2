import 'package:flutter/material.dart';
import 'package:talabatytask/homepage/page2.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController number = TextEditingController();
  bool x = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(top: 10.0,right: 15,left: 15),
              child: Column(
                children: [
                  SafeArea(
                      minimum: EdgeInsets.only(top: 50),
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/talabatylogo.PNG"))),
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width - 40,
                    child: TextField(
                      controller: name,
                      style:
                      TextStyle(fontSize: 14, height: 0.1, fontFamily: 'baloo'),
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                          hintText: "الاسم",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 65,
                    width: MediaQuery.of(context).size.width - 40,
                    child: TextField(
                      controller: phone,
                      maxLength: 11,
                      style:
                      TextStyle(fontSize: 14, height: 0.1, fontFamily: 'baloo'),
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                          hintText: "رقم الهاتف",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  (x == false)
                      ? GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 35,
                          color: Colors.red,
                        ),
                        Text(
                          "اذا كان لديك رمز مشاركه انقر هنا",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        x = true;
                      });
                    },
                  )
                      : SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width - 40,
                    child: TextField(
                      controller: number,
                      style: TextStyle(
                          fontSize: 14, height: 0.1, fontFamily: 'baloo'),
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                          hintText: "رقم المشاركه",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),),
                        onPressed: () {

                        },
                        child: Text("التالي",style:
                        TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                      ),
                      height: 40,
                      width: MediaQuery.of(context).size.width,) ,),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black38,shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("الغاء",style:
                        TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                      ),
                      height: 40,
                      width: MediaQuery.of(context).size.width,) ,),
                  SizedBox(height: 20,),

                ],
              ),
            );
          })
    );
  }
}
