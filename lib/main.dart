import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flip the Coin',
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
  bool a=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flip the Coin", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            a?Text("Head",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),):Text("Tail",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            a?Image.asset("images/head.jpg", height: 170,width: 170,):Image.asset("images/tail.jpg",height: 170,width: 170,),
            ElevatedButton(onPressed: (){
              a=!a;
              setState(() { });
            },
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Turn the Coin",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


