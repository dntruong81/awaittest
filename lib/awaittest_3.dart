import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageStage();
  }
}

class MyHomePageStage  extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FutureBuilder(
                future: userOrderMessage(),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  if (snapshot.connectionState == ConnectionState.waiting)
                      return CircularProgressIndicator();
                  if (snapshot.hasData)
                      return Text('Ket qua tra ve: ${snapshot.data}');
                  return Container(child: Text('${snapshot.hasError}'),);
                }
            )
          ],

        ),
      )

    );
  }
}
Future<String> userOrderMessage() async {
  return await getUserOrder();
}
Future<String> getUserOrder(){
  return Future.delayed(Duration(seconds: 10),() => 'Large latte');
}