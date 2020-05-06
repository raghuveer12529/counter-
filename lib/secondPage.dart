import 'package:flutter/material.dart';
// import './main.dart';
// import './displayList.dart';

 class MyHomePage extends StatefulWidget {
     
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState(
      
    );
      }
        
    }
    
    class MyHomePageState extends State<MyHomePage> {
      bool showDialog = false;

      var raghuIndex = 0;
      var ammuIndex=0;
      var shobaIndex=0;
      var maheshIndex=0;
      
      List <int> raghu =[];
      List <int> ammu =[];
      List <int> shoba = [];
      List <int> mahesh = [];
 
      var raghuMarks = TextEditingController();
      var ammuMarks = TextEditingController();
      var shobaMarks = TextEditingController();
      var maheshMarks = TextEditingController();


  
    // ok
  
  raghuValues(){
    var value = int.parse(raghuMarks.text) ;
        raghu.add(value);
    int total = 0;
    for(var rag in raghu ){
      total=total+rag;
    }
    if(total<240){
      print("Raghuiveer Total :");
      print (total);
        raghuIndex = total;
    }
    else{
    var a =" Raghuveer game over";
    raghuIndex = int.tryParse(a);
    }
    raghuMarks.clear();
    }
// this is for git testing
  ammuValues(){
    var value = int.parse(ammuMarks.text);
    ammu.add(value);
    int total = 0;
    for(var rag in  ammu){
    total = total+ rag;
      }
      if(total<240){
      print("Amrutha Total :");
      print (total);
      ammuIndex=total;
    }
    else{
    var a ="game over";
    ammuIndex = int.tryParse(a);
    }
    ammuMarks.clear();
  }


shobaValues(){
  var value = int.parse(shobaMarks.text);
    shoba.add(value);
    int shobatotal = 0;
    for(var rag in  shoba){
           shobatotal = shobatotal+ rag ;
      }
      if(shobatotal<240){
      print("Shoba Total :");
      print (shobatotal);
      shobaIndex=shobatotal;
    }
    else{
   var a ="game over";
    shobaIndex = int.tryParse(a);
    }
    shobaMarks.clear();
  }


  maheshValues(){
    var value = int.parse(maheshMarks.text);
    mahesh.add(value);
    int total = 0;
    for(var rag in  mahesh){
      // return rag;
    total = total+rag ;
      }
      if(total<240){
      print("Mahesh Total :");
      print (total);
      maheshIndex=total;
    }
    else{
   var a= "game over";
   maheshIndex=int.tryParse(a);
    }
    maheshMarks.clear();
  }

getValues(){
  raghuValues();
  ammuValues();
  shobaValues();
  maheshValues();
  
}

displayList(){
  Set<List<int>>  myList = {raghu,ammu,shoba,mahesh};
  for(List i in myList){
    int x = i.length;
   for(var j=0;j<x;j++){
     print(myList);
     print(i[j]);

   }

  }
}


 static String customTitle = 'CARDS';
var  title = new Text(customTitle) ;
      @override
      Widget build(BuildContext context) {
                                return new MaterialApp(
                                  debugShowCheckedModeBanner: false,
                                  //  title: "CARDS",
                                  darkTheme:ThemeData(
                                    brightness: Brightness.dark,
                                  ),
                                  home: new Scaffold(
                                    appBar: new AppBar(
                                      // title: 'We' ,
                                       title: this.title,
                                      actions: <Widget>[
                                        IconButton(icon: Icon(Icons.add_comment),
                                        onPressed:(){
                                          setState((){
                                            showDialog = true ;
                                          }  
                                          );
                                          return Scaffold(
                                                   
                                                    body: Center(
                                                     child: SingleChildScrollView(
                                                    child:new Container(
                                                      child:new Column(
                                                        children: <Widget>[
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Raghuveer Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(raghuIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Shoba Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(shobaIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Amrutha  Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(ammuIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Mahesh Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(maheshIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                        ]
                                                      )
                                                     )
                                                     )
                                                     )
                                          );
                                                     
                                          }
                                          )
                                     ,
                                     IconButton(icon: Icon(Icons.clear), onPressed: (){
                                        mahesh.clear();
                                        shoba.clear();
                                        ammu.clear();
                                        raghu.clear();
                                     },
                                     
                                     ),
                                     IconButton(icon: Icon(Icons.apps),
                                     onPressed:(){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return  Scaffold(
      appBar: AppBar(title:Text('List of Marks')),
  
      body:
          
      ListView.builder(
        itemCount: raghu.length,
        itemBuilder: (context,index){
          return Card(
        
            child: ListTile(
              title:Text(raghu[index].toString()
            ),
          )
          );
        }
        ),

      
       
    );

 } 
 )
                                     );
                                     }
                                     )
                                     ],
                                ),
                                body:Center(
                                  child: SingleChildScrollView(
                                    child: new Column(
                                  children: <Widget>[
                                    new Text("Welcome to the Game",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
                   showDialog==true?
                    new AlertDialog(
                      // Container(
                        title: Text('Raghu Score : '+raghuIndex.toString(),
                      // )
                      // title: Text('Raghu Score : '+raghuIndex.toString(),
                      
                      ),
              actions: <Widget>[
                FlatButton(
                  onPressed: (){
                    setState((){
                      showDialog = false;
                    });
                  },
                 child: Text("OK")
                 ),
                 ]
                 ):new Text(" "),
                
                      Container(
                                  width: 350,
                                  padding: EdgeInsets.all(10.0),
                                  child: TextField
                                  (
                                    controller: raghuMarks,
                                    autocorrect: true,
                                    decoration: InputDecoration(hintText: 'raghu marks'), 
                                    
                                  ),
                                ),
                              Container(
                                width: 350,
                                padding: EdgeInsets.all(10.0),
                                child: TextField
                                (
                                  controller: ammuMarks,
                                  autocorrect: true,
                                  decoration: InputDecoration(hintText: 'geetha marks'), 
                                )
                              ),
                              
                            Container(
                              width: 350,
                              padding: EdgeInsets.all(10.0),
                              child: TextField
                              (
                                controller: shobaMarks,
                                autocorrect: true,
                                decoration: InputDecoration(hintText: 'shoba marks'), 
                              ),
                            ),Container(
                              width: 350,
                              padding: EdgeInsets.all(10.0),
                              child: TextField
                              (
                                controller: maheshMarks,
                                autocorrect: true,
                                decoration: InputDecoration(hintText: 'mahesh marks'), 
                              ),
                            ),
                                                 
                                            RaisedButton(
                                              onPressed: getValues,
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              child: Text('Submit'),
                                        ),
                                         RaisedButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return Scaffold(
                                                   
                                                    body: Center(
                                                     child: SingleChildScrollView(
                                                    child:new Container(
                                                      child:new Column(
                                                        children: <Widget>[
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Raghuveer Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(raghuIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Shoba Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(shobaIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Amrutha  Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(ammuIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                    new Row(
                                                       children: <Widget>[
                                                      Text(
                                                        'Mahesh Marks : ',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                                                      ),
                                                      Text(maheshIndex.toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                                                       ]
                                                    ),
                                                        ]
                                                      )
                                                    )

                                                  
                                                     
                                                    ),
                                                  ));
                                                }));
                                              },
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              child: Text('Show Results'),
                                        ),
                                        RaisedButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return  Scaffold(
      appBar: AppBar(title:Text('Raghu List ')),
  
      body:
          
      ListView.builder(
        itemCount: raghu.length,
        itemBuilder: (context,index){
          return Card(
        
            child: ListTile(
              title:Text(raghu[index].toString()
            ),
          )
          );
        }
        ),

      
       
    );

 } 
 )
                                     );
                                     } ,
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              child: Text('Raghu List'),
                                        ),
                                        RaisedButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return  Scaffold(
      appBar: AppBar(title:Text('ammu List ')),
  
      body:
          
      ListView.builder(
        itemCount: ammu.length,
        itemBuilder: (context,index){
          return Card(
        
            child: ListTile(
              title:Text(ammu[index].toString()
            ),
          )
          );
        }
        ),

      
       
    );

 } 
 )
                                     );
                                     } ,
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              child: Text('ammu List'),
                                        ),
                                        RaisedButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return  Scaffold(
      appBar: AppBar(title:Text('shoba List ')),
  
      body:
          
      ListView.builder(
        itemCount: shoba.length,
        itemBuilder: (context,index){
          return Card(
        
            child: ListTile(
              title:Text(shoba[index].toString()
            ),
          )
          );
        }
        ),

      
       
    );

 } 
 )
                                     );
                                     } ,
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              child: Text('shoba List'),
                                        ),
                                        RaisedButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return  Scaffold(
      appBar: AppBar(title:Text('mahesh List Marks')),
  
      body:
          
      ListView.builder(
        itemCount: mahesh.length,
        itemBuilder: (context,index){
          return Card(
        
            child: ListTile(
              title:Text(mahesh[index].toString()
            ),
          )
          );
        }
        ),

      
       
    );

 } 
 )
                                     );
                                     } ,
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              child: Text('mahesh List'),
                                        ),
                                        
                                        
          ],
          )
        )
        )
        )
        );


  }
     
}
