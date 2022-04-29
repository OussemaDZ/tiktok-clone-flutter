import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tittok/accueil.dart';
import 'package:tittok/decovrir.dart';
import 'package:tittok/mesage.dart';
import 'package:tittok/tab_bar.dart';



class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.person_add,color: Colors.black,size: 30),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Oussemadz',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
             Icon(Icons.expand_more,color: Colors.black,size: 30,),
          ],
        ),
        actions: [ 
        
        Icon(Icons.visibility_outlined,color: Colors.black,size: 30,),
        SizedBox(width: 10,), 
        Icon(Icons.menu , color: Colors.black,size: 30,),
        SizedBox(width:5), 
        ]),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 5),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Accueil();
                  }));
                },
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  ),
                child: Icon(Icons.home_outlined,color: Colors.grey,size: 40,),),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Decouvrir();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  ),
                child: Icon(CupertinoIcons.compass_fill,color: Colors.grey,size: 40,),),
              Stack(
                children: [
                  Container(height: 40,width: 80,decoration: 
                  BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.pink,
                      offset: Offset(5, 0),
                    ),]
                      ,borderRadius: BorderRadius.circular(8),color: Colors.white,),),
                 

                  Container(height: 40,width: 35,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 92, 137, 227),
                      offset: Offset(-5, 0),
                    ),],color: Colors.white,),),
                  Positioned(
                    left: 9,
                    bottom: 1,
                    top: 2,
                    child: ElevatedButton(
                    onPressed: (){},
                    
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 0,
                      padding: EdgeInsets.all(4),
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      
                      ),
                    child: Icon(Icons.add,color: Colors.white,size: 30,),),
                  ),
                ]),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Messages();
                  }));
                },
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  ),
                child: Icon(Icons.messenger_outline,color: Colors.grey,size: 40,),),
              ElevatedButton(
                onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  ),
                child: Icon(Icons.person,color: Colors.black,size: 40,),),
            
            ],
          ),
        ),
      body: 
      Container(
        child: ListView(  
          children: [
          Container(height: 38,color: Colors.grey[200],width: double.infinity,child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(CupertinoIcons.lock),Text('Compte Privée')],),),
          SizedBox(height: 15,),
          CircleAvatar(backgroundImage: AssetImage('lib/images/image18.jpg'), radius: 40),
          SizedBox(height: 15,),
          Container(alignment: Alignment.center,child: Text('@osmhkr',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                List(Prop: 'Abonnements',nom: '71',),
                Container(child: Text(''),color: Colors.grey,width: 2,),
                List(Prop: 'Abonnés',nom: '13.6M',),
                Container(child: Text(''),color: Colors.grey,width: 2,),
                List(Prop: "J'aime",nom: '987.9M',)
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
              Expanded(flex: 3,child: ElevatedButton(style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),side: BorderSide(color: Colors.grey,width: 1))
              ),
              onPressed: (){}, 
              child: Text(
                'Modifer le profil',
                style: TextStyle(color: Colors.black),
                ))),
              SizedBox(width: 5,),
              Expanded(flex: 1,child: Container(decoration: BoxDecoration(
               border: Border.all(width: 1,color: Colors.grey),
               borderRadius: BorderRadius.circular(4),
               ),
               child: Icon(Icons.bookmark_border,size: 34,),)
              ),
            ],),
          ),
          SizedBox(height: 15,),
          TabBare(),
       
        ]),
      ),

      
    );
  }
}
class List extends StatelessWidget {
  List({ this.Prop,this.nom}) ;
  String? nom;
  String? Prop;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(nom!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        Text(Prop!,style: TextStyle(color: Colors.grey),),
      ],),
    );
  }
}
 


class Bible extends StatelessWidget {
  String nom;
  String nom2;
  String nom3;  
  Color color;
  Color color2;
  Icon icone;
  Bible(this.nom,this.nom2,this.nom3,this.color,this.color2,this.icone);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      height: 180,
      width: 180,
      decoration: BoxDecoration(color: Colors.white,border: Border.all(width: 1,color:Colors.black),borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        icone,
        SizedBox(height: 4,),
        Text(nom,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        SizedBox(height: 4,),
        Text(nom2,textAlign: TextAlign.center,),
        SizedBox(height: 4,),
        ElevatedButton(
          onPressed: (){}, 
          child: Text(nom3,style: TextStyle(color: color2),),
          style: ElevatedButton.styleFrom(primary: color,elevation: 0,shape: RoundedRectangleBorder(side: BorderSide(width: 1,color:Colors.black),borderRadius: BorderRadius.circular(4))),)
      ],),
      
    );
  }
}




