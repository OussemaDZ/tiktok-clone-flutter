import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tittok/decovrir.dart';
import 'package:tittok/mesage.dart';
import 'package:tittok/profill.dart';


class Accueil extends StatelessWidget {
  const Accueil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.live_tv_outlined,size: 40,),
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
          children :[ Container(
          
            child: Text(
              'Abonments ',
              style: TextStyle(
                color: Colors.white,
                ),
                ),
                
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                  )
          ],
        ),
              VerticalDivider(color: Colors.black,thickness: 3,),
              Text('Pour moi',style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        actions: [
          Icon(Icons.search,size: 40,)
        ],
      ),
      
  bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 5),
          color: Colors.black,
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
                  primary: Colors.black,
                  elevation: 0,
                  ),
                child: Icon(Icons.home_outlined,color: Colors.white,size: 40,),),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Decouvrir();
                  }));
                },
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 0,
                  ),
                child: Icon(CupertinoIcons.compass_fill,color: Colors.white,size: 40,),),
              Stack(
                children: [
                  Container(height: 40,width: 80,decoration: 
                  BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.pink,
                      offset: Offset(5, 0),
                    ),]
                      ,borderRadius: BorderRadius.circular(8),color: Colors.black,),),
                 
    
                  Container(height: 40,width: 35,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 92, 137, 227),
                      offset: Offset(-5, 0),
                    ),],color: Colors.black,),),
                  Positioned(
                    left: 9,
                    bottom: 1,
                    top: 2,
                    child: ElevatedButton(
                    onPressed: (){},
                    
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.all(4),
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      
                      ),
                    child: Icon(Icons.add,color: Colors.black,size: 30,),),
                  ),
                ]),
              ElevatedButton(
                onPressed: (

                ){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Messages();
                  }));
                },
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 0,
                  ),
                child: Icon(Icons.chat,color: Colors.white,size: 40,),),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Profile();
                  }));
                },
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 0,
                  ),
                child: Icon(Icons.person_outline_outlined,color: Colors.white,size: 40,),),
            
            ],
          ),
        ),

     body: SafeArea(
       child: Center(
         child: Stack(
           children: [
             Container(
                height: double.infinity,
                width: double.infinity,
               child: Image(image: AssetImage('lib/images/image11.jpg'),fit: BoxFit.cover),
                  ),  
             
             Positioned(
               right: 3,
               bottom: 0,
               
               child: Column(
                 
                 children: [
                 
                 Stack(
                   children: [
                     Container(
                     height: 60,
                     width: 60,
                     decoration: BoxDecoration(
                       color: Colors.green,
                       borderRadius: BorderRadius.circular(80),
                       border: Border.all(color: Colors.white,width: 2),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,top: 50),
                     child: Icon(
                       Icons.add_circle_outlined, size: 20,color: Colors.red,
                     ),
                   ),
            
                   ]),
                 SizedBox(height: 8,),
                 Icon(CupertinoIcons.heart_fill,size: 45,color: Colors.white,),
                 Text('100.8K',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
                 SizedBox(height: 8,),
                 Icon(CupertinoIcons.bubble_middle_bottom_fill,size: 45,color: Colors.white,),
                 Text('588',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
                 SizedBox(height: 8,),
                 Icon(Icons.share_rounded,size: 45,color: Colors.white,),
                 Text('108',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
                 SizedBox(height: 15,),
                 Container(
                   height: 50,
                   width: 50, 
                   decoration: BoxDecoration(
                     color: Colors.amber,
                     borderRadius: BorderRadius.circular(80),
                     border: Border.all(
                       color: Colors.black87,
                       width: 9),
                       ),
                 ),
                 SizedBox(height: 10,)
               ],),
             ),
             Positioned(
               left: 5,
               bottom: 0,
               child: Container(
                 margin: EdgeInsets.only(bottom: 30),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('@OSMHKR ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                     SizedBox(height: 30,),
                     Row(
                       
                       children: [
                         SizedBox(width: 15,),
                         Icon(CupertinoIcons.music_note_2,size: 25,color: Colors.white,),
                       SizedBox(width: 40,),
                        Text('TikTok Musique',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       ],
                     )
                   ],
                 )
               ),
             ),
          
           ],
         ),
        
          
        
       ),
     ), 
    
    );
  }
}