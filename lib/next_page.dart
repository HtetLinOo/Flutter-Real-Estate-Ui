import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    var screenheight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(child: Image.asset("assets/images/fl_i.jpg",fit: BoxFit.cover,
          height: screenheight*0.4,)

          ),
          Container(
            margin: EdgeInsets.only(top: screenheight*0.3 ),
            child: Material(
              borderRadius:BorderRadius.only(
                topLeft: Radius.circular(80.0),
              ),
                  child:Container(
                    padding: EdgeInsets.only(top: 30.0,left: 30.0,right: 10.0,bottom: 30.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$5,999",style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Icon(Icons.bookmark_border,color: Colors.indigoAccent,)
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Text("Family Home",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color:Colors.black
                  ),),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.spa,size: 15.0,color: Colors.grey,),
                          Text("2"),
                          Icon(Icons.room_service,size: 15.0,color: Colors.grey,),
                          Text("3"),
                          Icon(Icons.local_airport,size: 15.0,color: Colors.grey,),
                          Text("2"),
                        ],
                      ),
                      Text("12,000sq.ft"),
                    ],

                  ),
                  SizedBox(height: 10.0,),
                  Divider(),
                  SizedBox(height: 10.0,),
                  Text("Home Loan Calculator",style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("\$1,602/month",style: TextStyle(

                    ),),
                      Icon(Icons.question_answer,color: Colors.indigoAccent,),
                    ],
                  ),
                  SizedBox(height: 20.0,),

                  Text("Your Home Loan",style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10.0,),
                  Text("Apply for conditional approval"),
                  SizedBox(height: 10.0,),
                  Center(child: Image.asset("assets/images/ma.png")),
                  SizedBox(height: 20.0,),
                  Row(

                    children: [
                      Expanded(
                        child: Container(

                          padding: EdgeInsets.all(10.0),
                          child: Text("Ask a question"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            ),
                            color: Colors.indigoAccent.withOpacity(0.6),
                          ),
                    alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          child: Text("Express Interest",style: TextStyle(color: Colors.white),),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                            color: Colors.indigoAccent,
                          ),

                        ),
                      ),
                    ],
                  ),
                ],
              ),
    ),
            ),
          ),
        ],
      ),
    );
  }
}
