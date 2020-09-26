import 'package:flutter/material.dart';
import 'package:ui/next_page.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.indigoAccent,
        title: Text("Real Estate UI Challenge"),


      ),
      body: Container(
        margin: EdgeInsets.only(

          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Sir Htet",style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                ),
                ),
              Container(
                width: 50.0,
                  height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/opavator.png",
                      ), fit: BoxFit.cover),
                  color: Colors.indigoAccent,
                ),

              ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Discover",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Suitable Home",style: TextStyle(
              color: Colors.black,

              fontSize: 30.0,
            ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent.withOpacity(0.75),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),

                      )

                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon:Icon(Icons.search),
                        hintText: "Find a good home",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Stack(
                  children: [
                    Icon(Icons.notifications_none),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        child: Text("2",style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),


            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListWidget(),
                  ListWidget(),
                  ListWidget(),
                  ListWidget(),
                  ListWidget(),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            index==1?_selectedWidget(Icon(Icons.home),"Home,"):IconButton(icon: Icon(Icons.home),onPressed: (){
              setState(() {
                index=1;
              });
            },),
            index==2?_selectedWidget(Icon(Icons.bookmark_border),"Bookmark"):IconButton(icon:Icon(Icons.bookmark_border),onPressed: (){
                setState(() {
                  index=2;
                });
            },),
            index==3?_selectedWidget(Icon(Icons.message),"Message"):IconButton(icon:Icon(Icons.message),onPressed: ()
              {
            setState(() {
              index=3;
            });
              },),
           index==4?_selectedWidget(Icon(Icons.person),"Profile"): IconButton(icon:Icon(Icons.person),onPressed: (){
            setState(() {
              index=4;
            });
            },),
          ],
        ),
      ),

    );
  }

  Widget ListWidget()
  {
    return InkWell(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return NextPage();
        }));
      },
      child: Container(

        width: 250,
        height: 400,
        child: Stack(
          children: [
            Container(
              width: 230,
              height: 375,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/fl_i.jpg",
                      ), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 30.0,
              child: FloatingActionButton(
                heroTag: null,
                child: Icon(Icons.chevron_right,color: Colors.white,),
                backgroundColor: Colors.orange,
                mini: true,
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Family House",style: TextStyle(
                    fontWeight:FontWeight.bold,
                    color: Colors.white,
                  ),),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.white,),
                      Text("Yangon,Myanamar Plaza,",style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _selectedWidget(Icon icon,String str)
  {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        color: Colors.indigoAccent.withOpacity(0.8),
      ),
      child: Row(
        children: [
          icon,
          Text(str),
        ],
      ),
    );
  }
}
