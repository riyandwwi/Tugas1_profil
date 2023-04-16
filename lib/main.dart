import 'package:flutter/material.dart';
import 'package:tugas1_riyan/bio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: biodata(),
    );
  }
}

class biodata extends StatelessWidget {
  const biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/b.png'),
            fit: BoxFit.cover
             )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
              Center(
                child: Container(
                 child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/3.jpg'),
                 ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Riyan Dwi Yulian Prakoso', 
              style: TextStyle(
                fontWeight: FontWeight.bold , 
                fontSize: 20), 
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => biox() ,
                    ) 
                    );
                }, child: Icon(Icons.find_in_page, size: 50,)
                ),
                Text('Biodata')
                ],
              ),
              Column(
                children: <Widget> [
                  ElevatedButton(onPressed: () {
                    showDialog(context: context, builder: (BuildContext){
                      return AlertDialog(
                          title: Text('Bahasa pemrograman '),
                          content: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                Container( width: 50, height: 50,child: Image.asset('assets/images/py.png')),
                                SizedBox(height: 10,),
                                Container(width: 50,height: 50,child: Image.asset('assets/images/jv.png'))
                                
                              ],
                            ),
                          ),
                      );
                    }
                    
                    );
                  }, child: Icon(Icons.data_object))
                ],
              )
            ],
          )
          ],
        ),
      ),
    );
  }
}