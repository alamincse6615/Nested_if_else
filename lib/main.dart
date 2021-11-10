import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final firstNumber  = TextEditingController();
 final secondNumber  = TextEditingController();
 final thirdNumber  = TextEditingController();

 int a = 0;
 int b = 0;
 int c = 0;

 var result ;


  @override
  void dispose() {
    firstNumber.dispose();
    secondNumber.dispose();
    thirdNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: TextField(
              controller: firstNumber,
              keyboardType: TextInputType.number,
                decoration:InputDecoration(
                    hintText: 'First Number',
                    border: OutlineInputBorder(),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: TextField(
              controller: secondNumber,
              keyboardType: TextInputType.number,
                decoration:InputDecoration(
                    hintText: 'Second Number',
                    border: OutlineInputBorder(),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: TextField(
              controller: thirdNumber,
              keyboardType: TextInputType.number,
                decoration:InputDecoration(
                    hintText: 'Third Number',
                    border: OutlineInputBorder(),
                ),
            ),
          ),

          SizedBox(height: 30,),
          InkWell(
            child: Text(''
                'result is : $result',style: TextStyle(fontSize: 30),),
            onTap: (){


              final snackbar = SnackBar(
                  content: Text("Undo"),


              );

              ScaffoldMessenger.of(context).showSnackBar(snackbar);

            },
          ),
          SizedBox(height:10,),
          ElevatedButton(
              onPressed: (){
                Fluttertoast.showToast(
                    msg: "abc",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );


               setState(() {
                 a = int.parse(firstNumber.text);
                 b = int.parse(secondNumber.text);
                 c = int.parse(thirdNumber.text);

                 //nested if else
                if(a>b){
                  if(a<c){
                    result = a;
                  }else{
                    result = 505;
                  }
                }else{
                  result = 404;
                }
               });

              },
              child: Text("Click Here")
          )
        ],
      )
    );
  }
}
