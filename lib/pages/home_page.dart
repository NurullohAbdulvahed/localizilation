import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 10,left: 10,right: 10),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text("flutter".tr()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: MaterialButton(
                      child: Text("English"),
                      onPressed: (){
                        context.locale=Locale('en',"US");
                      },
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(

                    color: Colors.red,
                    child: MaterialButton(
                      child: Text("Russian"),
                      onPressed: (){
                        context.locale=Locale('ru',"RU");
                      },
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(

                    color: Colors.blue,
                    child: MaterialButton(
                      child: Text("Uzbek"),
                      onPressed: (){
                        context.locale=Locale('uz',"UZ");
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
