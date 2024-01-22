import 'package:flutter/material.dart';

void main() => runApp(const DrawerApp());

class DrawerApp extends StatelessWidget{
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const  DrawerExample(),
    );
  }
}

class DrawerExample extends StatefulWidget{
  const DrawerExample({Key? key}) : super(key: key);

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}
class _DrawerExampleState extends State<DrawerExample>{
  String selectedPage = '';

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
        
        preferredSize: const Size.fromHeight(
          65.0
        ),
        child: AppBar(
          backgroundColor: Color(0xff182949),
          title: Container(
            width: 60,
            alignment: Alignment.bottomLeft,
          child: Text('SODA',style:TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            fontWeight:FontWeight.w500,
            
          )),
          
          ),
          
          actions: [
              IconButton(onPressed:(){},icon: Icon(Icons.notifications,color: Colors.white)),
              IconButton(onPressed:(){},icon: Icon(Icons.share,color: Colors.white)),
              IconButton(onPressed:(){},icon: Icon(Icons.search,color: Colors.white)),
          ],
          iconTheme: IconThemeData(color: Colors.white),
        )
        
      ),
      
      
      drawer:Drawer(
        
        child: ListView(
          
          children: <Widget>[
            
            const DrawerHeader(
              decoration: BoxDecoration(
                color:Color(0xff182949),
              ),
              
              child: Text(
                'SODA',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Icon : favorite\n',style:TextStyle(fontSize: 14,fontStyle:FontStyle.normal,fontWeight: FontWeight.w500)),
              
            )
          ],
        )
        
      ),
      body:Column(
        children: [
          Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.fromLTRB(15, 19, 0, 0),
        child: Text('DAY 8',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
      ),
      OutlinedCardExample(),
      ],) ,
      
          
    );
  }
}



      
  
class OutlinedCardExample extends StatelessWidget{
  const OutlinedCardExample({super.key});

  @override

  Widget build (BuildContext context){
    return 
    Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: 
        Column(
          
          children: <Widget>[
            Container(
              
              
            child: 
            ListTile(
              
              title: Text('Boilerplate 4\n',style:TextStyle(fontSize:20,fontWeight: FontWeight.w500 )),
              subtitle: Container(
                alignment: Alignment.topLeft
                ,child:
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('어느덧 SODA 캠프 8일차가 되었네요!',),
              Text('여기까지 달려오시느라 수고 많으셨어요 :)\n',),
              Text('아래 있는 CANCEL과 SUBMIT은 버튼입니다 !!',),
              ]
            ),
            ),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              TextButton(
                  child: const Text('CANCEL'),
                  onPressed: (){},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('SUBMIT'),
                  onPressed: (){},
                ),
                const SizedBox(width: 8),
            ],)
          ],
        ),
    
        ); 
  }
}