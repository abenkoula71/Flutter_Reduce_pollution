import 'dart:ui';

import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: ExactAssetImage('images/image1.jpg'),fit: BoxFit.cover)),
      child: Column(
        children: [
          SizedBox(height: 40,),
          Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.deck,color: Colors.white,))],),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 30),
              child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [ 
                
                      Container( width: double.infinity,
                       child: Text('Choose your Activity',textAlign: TextAlign.start, style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w700),),),
                    
                     Container(width: double.infinity, 
                       child: Text("Let's burn some carbon ?",textAlign: TextAlign.start, style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),),),
                    
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(height: 230,width: 180,decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.green.shade600,
                Colors.lightBlueAccent,
              ],
            ),borderRadius: BorderRadius.circular(20)), margin: EdgeInsets.symmetric(horizontal: 20),child: 
            Column( children: [Container(height: 140,child: Image(image: AssetImage("images/image2.png"),),),
             Container(width: double.infinity,padding: EdgeInsets.only(left: 15), child: Text('1800DA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
            SizedBox(height: 10,),
             Container(width: double.infinity,padding: EdgeInsets.only(left: 15), child: Text('Planting Biodiverse Fordsts in Panama',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),))],),);
                      },
                    ),
                  ),
                  Container(width: double.infinity, child: Text('Planting forests in panama'),),
                  Container(width: double.infinity, child: Text('You can reduce the carbon produced or you can remove it.which prodect would you like to choose to removes this carbon'),)
                   ,Container(width: double.infinity, child: Text('funding your favonte project !!'),),
                   Container(width: double.infinity, 
                   child: Row(children: [
                     Container(height: 30,width: 30,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),),
                     Container(height: 30,width: 30,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),),
                     Container(height: 30,width: 30,decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),),
                     Container(height: 30,width: 30,decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(20)),alignment: Alignment.center,child: Text('16+',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),)],)),
                  
                  
                  
                  ],
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,children: [Container(height: 50,width:50,alignment: Alignment.center,decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),)),child: Icon(Icons.add,color: Colors.white,),)],)
        ],
      ),
    ),
    );
  }
}