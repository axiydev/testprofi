import 'package:flutter/material.dart';
import 'package:testprofi/animations/fade_animation.dart';
import 'dart:math';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  bool _isLogin=true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        width:double.infinity,
        decoration:BoxDecoration(
          image:DecorationImage(
            image:AssetImage('assets/images/im_party.jpeg'),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(30),
          decoration:BoxDecoration(
            gradient:LinearGradient(
              begin:Alignment.topCenter,
              colors:[
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.3),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child:Column(
            mainAxisAlignment:MainAxisAlignment.end,
            children:[
              FadeAnimation(1,Text('Find the best perties near you',style:TextStyle(color:Colors.white,fontSize:40,fontWeight:FontWeight.bold),),),
              SizedBox(height:25),
              FadeAnimation(1.1,Text('Let us find you a party for your interest',style:TextStyle(color:Colors.white,fontSize:23,fontWeight:FontWeight.w300),)),
              SizedBox(height:150,),
              _isLogin?
              FadeAnimation(1.2,Container(
                height:50,
                width:double.infinity,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(25),
                  color:Colors.orange,
                ),
                child:Center(
                  child:Text('Start',style:TextStyle(color:Colors.white,fontSize:18)),
                ),
              ))
              :
              FadeAnimation(1.3,Container(
                height:50,
                width:double.infinity,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(25),
                  color:Colors.deepOrange,
                ),
                child:Center(
                  child:Text('Google+',style:TextStyle(color:Colors.white,fontSize:18),),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}