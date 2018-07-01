import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter ',
      home: new MyHomePage(title: 'Flutter Calculator'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _result="";
  var _firstinput=new TextEditingController();
  final _secondinput=new TextEditingController();
  var _resultinput=new TextEditingController();


  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }



  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
       title: new Text(widget.title),//First app
        leading: IconButton(icon: Icon(null), onPressed: (){}),
      ),
      body: new SafeArea(
        // ignore: argument_type_not_assignable


        child: new ListView(
          padding: const EdgeInsets.symmetric(vertical: 24.0),

          children: <Widget>[
            SizedBox(width: 10.0),

            TextField(

          controller: _firstinput,
                  onChanged: (String s){
                    _firstinput.text=s;
                  },
                  decoration: InputDecoration(
                    filled: true,labelText: "First Input",




                  ),
                )
                ,
            SizedBox(height: 12.0,width: 10.0,),
                TextField(
                  controller: _secondinput,
                  onChanged: (String s){
                    _secondinput.text=s;
                  },
                  decoration: InputDecoration(
                      filled: true,labelText: "Second Input"
                  ),
                ),
            SizedBox(height: 12.0,width: 10.0,),

            new Text(
                "Perform Operation",style: new TextStyle(fontSize: 20.0),
              ) ,

            SizedBox(height: 12.0),
                new Container(
                    width: 200.0,
                   // ignore: argument_type_not_assignable

                   child: new Row(
                     // ignore: argument_type_not_assignable
                      mainAxisAlignment: MainAxisAlignment.center,
                     // ignore: argument_type_not_assignable
                     children: <Widget>[
                       RaisedButton(
                         child: Text('+',style: new TextStyle(fontSize: 30.0,)),
                         onPressed: () {
                            // ignore: argument_type_not_assignable
                               setState(() {
                                 var a1=int.parse(_firstinput.text);
                                 var a2=int.parse(_secondinput.text);
                                 int  a= a1+a2;

                                 _result=a.toString() ;

                               });


                           // TODO: Show the next page (101)
                         },
                           color: Colors.red,
                       ),
                       SizedBox(width: 32.0),

                       RaisedButton(
                         child: Text('-',style: new TextStyle(fontSize: 30.0,)),
                         onPressed: () {

                           // ignore: argument_type_not_assignable
                          setState(() {
                            var a1=int.parse(_firstinput.text);
                            var a2=int.parse(_secondinput.text);
                            int  a= a1-a2;

                            _result=a.toString() ;

                          });
                           // TODO: Clear the text fields (101)
                         },
                           color: Colors.amber,
                       ),


                     ],
                   ),
                ),
            SizedBox(height: 32.0),

            new Container(
              width: 100.0,
              // ignore: argument_type_not_assignable

              child: new Row(
                // ignore: argument_type_not_assignable
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: argument_type_not_assignable
                children: <Widget>[
                  RaisedButton(

                    child: Text('*',style: new TextStyle(fontSize: 30.0,),),
                    onPressed: () {
                      // ignore: argument_type_not_assignable
                      setState(() {
                        var a1=int.parse(_firstinput.text);
                        var a2=int.parse(_secondinput.text);
                        int  a= a1*a2;

                        _result=a.toString() ;

                      });
                      // TODO: Show the next page (101)
                    },
                    color: Colors.green,
                  ),
                  SizedBox(width: 32.0),

                  RaisedButton(
                    child: Text('/',style: new TextStyle(fontSize: 30.0,)),
                    onPressed: () {
                      // ignore: argument_type_not_assignable
                     setState(() {
                       var a1=double.parse(_firstinput.text);
                       var a2=double.parse(_secondinput.text);
                       double  a= a1/a2;

                       _result=a.toString() ;

                     });
                      // TODO: Clear the text fields (101)
                    },
                    color: Colors.lightBlue,
                  ),

                ],
              ),
            ),
            SizedBox(height: 32.0,width: 50.0,),

            new Container(
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "Result",style: new TextStyle(fontSize: 30.0,color: Colors.red),
                    ) ,

                    SizedBox(height: 12.0),


                    new Text(
                      "$_result",style: new TextStyle(fontSize: 25.0),

                    ) ,

                  ],
                )

              )
            )
              ],

         // ignore: duplicate_named_argument, duplicate_named_argument, argument_type_not_assignable





        // ignore: missing_identifier
        ),

        // ignore: duplicate_named_argument

        // ignore: duplicate_named_argument
      ),



      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

