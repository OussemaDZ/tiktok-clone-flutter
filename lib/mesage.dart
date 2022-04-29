import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:decorated_icon/decorated_icon.dart';
import 'package:tittok/accueil.dart';
import 'package:tittok/decovrir.dart';
import 'package:tittok/profill.dart';

class Messages extends StatelessWidget {
  const Messages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Toute l activité',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
             Icon(Icons.expand_more,color: Colors.black,size: 30,),
          ],
        ),
        actions: [
           Container(padding: EdgeInsets.only(right: 10),child: Icon(Icons.send,color: Colors.black,size: 30,)),
        ],
    
    
    
     
      ),    
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
                onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  ),
                child: Icon(Icons.chat,color: Colors.black,size: 40,),),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Profile();
                  }));
                },
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  ),
                child: Icon(Icons.person_outline_outlined,color: Colors.grey,size: 40,),),
            
            ],
          ),
        ),
      body: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(top:20.0,left: 10,right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Text('Demandes d abonnement',style: TextStyle(color: Colors.black,fontSize: 16),),
                    Row( 
                    children: [
                      Container(height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                      SizedBox(width: 2,), 
                      Text('2',style: TextStyle(color: Colors.grey,fontSize: 16)),
                      SizedBox(width: 4,),
                      Icon(Icons.keyboard_arrow_right_sharp,color: Colors.grey,size: 25,),
                    ],
                  ),
                     
                  ],
                ),
                SizedBox(height: 20,),
                Divider(color: Colors.black,height: 2,endIndent: 15,indent: 15,),
                SizedBox(height: 15,),
                Text('Cette semaine',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 16),),
                SizedBox(height: 10,),
                ListTile(
                    leading:
                     Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(6.5),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: Icon(Icons.watch,color: Colors.black,)
                    ),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'Temps d ecran:' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      TextSpan(text: 'Tableau de border et \n interruptions du temps d ecran ',style: TextStyle(color: Colors.black)),
                      TextSpan(text: '3j',style: TextStyle(color: Colors.grey)),
              
                    ])),
                   
                    trailing: Icon(Icons.keyboard_arrow_right_sharp,color: Colors.grey,size: 25,),
                      
                    ),
                SizedBox(height: 10,),
                Text('Cette Mois',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 16),),
                SizedBox(height: 10,),
                ListTile(
                    leading:
                     Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(6.5),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: Icon(Icons.music_note,color: Colors.black,)
                    ),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'TicTok:' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      TextSpan(text: ' إستمتع يرمضانك على تيك توك ',style: TextStyle(color: Colors.black)),
                      WidgetSpan(child: Icon(CupertinoIcons.heart_fill,color: Colors.red,size: 17,)),
                      TextSpan(text: '\n',style: TextStyle(color: Colors.grey)),
                      WidgetSpan(child: Icon(CupertinoIcons.moon_stars_fill,color: Colors.yellow[700],)),
                      WidgetSpan(child: Icon(CupertinoIcons.wand_stars_inverse,color: Colors.yellow[700],)),
                      TextSpan(text: ' 3sem',style: TextStyle(color: Colors.grey)),
              
              
                    ])),
                   
                    trailing: Icon(Icons.keyboard_arrow_right_sharp,color: Colors.grey,size: 25,),
                      
                    ),
                SizedBox(height: 10,),
                Text('Précédent',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 16),),
                SizedBox(height: 10,),
                ListTile(
                    leading:
                     Stack(
                       children :[ 
                       Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(6.5),
                        //decoration: BoxDecoration(color: Colors.white,border: Border.all(width: 2,color: Colors.black54)),
                        
                        ),
                       
                          Positioned(
                          right: -2,
                          top: -2,
                          child: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(5.5),
                          decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10,spreadRadius: 6,offset: Offset(0, 0))],color: Colors.pink[300],borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.white)),
                          child: DecoratedIcon(Icons.person,color: Colors.white,shadows: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 13,
                              
                            )
                          ],)
                          ),
                        ),
                         Positioned(
                          left: -2,
                          bottom: -2,
                          child: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(5.5),
                          decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10,spreadRadius: 6,offset: Offset(0, 0))],color: Colors.blue[300],borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.white)),
                          child: DecoratedIcon(Icons.person,color: Colors.white,shadows: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 13,
                              
                            )
                          ],)
                          ),
                        ),
              ]),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'Vues du profil :\n' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      TextSpan(text: ' L historique des vues du profil est\n désormais disponible.',style: TextStyle(color: Colors.grey[700])),
                      TextSpan(text: ' 5sem',style: TextStyle(color: Colors.grey[400])),
              
              
                    ])),              
                    trailing: Icon(Icons.keyboard_arrow_right_sharp,color: Colors.grey,size: 25,),
                      
                    ),
                SizedBox(height: 10,),
                ListTile(
                    leading:
                      Container(
                      height: 50,
                      width: 50,
                      
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image(image: AssetImage('lib/images/image12.jpg'),fit: BoxFit.cover,height: 50,width: 50,))
                    ),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'Oussema HKR \n' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      TextSpan(text: 'a aimé ton commentaire. ',style: TextStyle(color: Colors.black)),
                      TextSpan(text: '11sem \n|  osmhkr: شبيه تيكتوك',style: TextStyle(color: Colors.grey)),
              
                    ])),
                   
                    trailing: Image(image: AssetImage('lib/images/image10.jpg'),width: 40,height: 70,),
                      
                    ),
                SizedBox(height: 10,),
                ListTile(
                    leading:
                      Container(
                      height: 50,
                      width: 50,
                      
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image(image: AssetImage('lib/images/image13.jpg'),fit: BoxFit.cover,height: 50,width: 50,))
                    ),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'ManelMND \n' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      TextSpan(text: 's est abooné(e) a ton compte.\nVient de voir la vidéo que as partagée. ',style: TextStyle(color: Colors.grey[600])),
                      TextSpan(text: '21sem',style: TextStyle(color: Colors.grey)),
                      WidgetSpan(child: Image(image: AssetImage('lib/images/image11.jpg'),width: 40,height: 60,),)
          
              
                    ])),
                    
                    trailing: ElevatedButton(
                      
                    onPressed: (){},
                    child: Text('Message',style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: Colors.black),
                        
                      ),
                      ),),
                      
                    ),  
                SizedBox(height: 10,),
                Text('Comptes Suggérés !',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 16),),
                SizedBox(height: 10,),
                ListTile(
                    leading:
                      Container(
                      height: 50,
                      width: 50,
                      
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image(image: AssetImage('lib/images/image17.jpg'),fit: BoxFit.cover,height: 50,width: 50,))
                    ),
                    title: Stack(
                      children: [
                        RichText(text: const TextSpan(children: [
                          TextSpan(text: 'Raouf \n' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                          TextSpan(text: 'Personnes que tu\npourrais connaitre',style: TextStyle(color: Colors.black)),
                        ])),
                         Positioned(
                           right: 0,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.red),
                             onPressed: (){},child: Text("S'abonner"),)),
                      ],
                    ),
                   
                    trailing: 
                        
                            Icon(Icons.close),
                         
                      
                    ),
                   SizedBox(height: 10,), 
                    ListTile(
                    leading:
                      Container(
                      height: 50,
                      width: 50,
                      
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image(image: AssetImage('lib/images/Image14.jpg'),fit: BoxFit.cover,height: 50,width: 50,))
                    ),
                    title: Stack(
                      children: [
                        RichText(text: const TextSpan(children: [
                          TextSpan(text: 'Fatima ABS \n' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                          TextSpan(text: 'Personnes que tu\npourrais connaitre',style: TextStyle(color: Colors.black)),
                        ])),
                         Positioned(
                           right: 0,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.red),
                             onPressed: (){},child: Text("S'abonner"),)),
                      ],
                    ),
                   
                    trailing: 
                        
                            Icon(Icons.close),
                         
                      
                    ),
                  SizedBox(height: 10,),
                    ListTile(
                    leading:
                      Container(
                      height: 50,
                      width: 50,
                      
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image(image: AssetImage('lib/images/image16.jpg'),fit: BoxFit.cover,height: 50,width: 50,))
                    ),
                    title: Stack(
                      children: [
                        RichText(text: const TextSpan(children: [
                          TextSpan(text: 'Amine Turkhy \n' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                          TextSpan(text: 'Personnes que tu\npourrais connaitre',style: TextStyle(color: Colors.black)),
                        ])),
                         Positioned(
                           right: 0,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.red),
                             onPressed: (){},child: Text("S'abonner"),)),
                      ],
                    ),
                   
                    trailing: 
                        
                            Icon(Icons.close),
                         
                      
                    ),
                   SizedBox(height: 10,),
                    ListTile(
                    leading:
                      Container(
                      height: 50,
                      width: 50,
                      
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image(image: AssetImage('lib/images/image15.jpg'),fit: BoxFit.cover,height: 50,width: 50,))
                    ),
                    title: Stack(
                      children: [
                        RichText(text: const TextSpan(children: [
                          TextSpan(text: 'Karima.3008 \n' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                          TextSpan(text: 'Personnes que tu\npourrais connaitre',style: TextStyle(color: Colors.black)),
                        ])),
                         Positioned(
                           right: 0,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.red),
                             onPressed: (){},child: Text("S'abonner"),)),
                      ],
                    ),
                   
                    trailing: 
                        
                            Icon(Icons.close),
                         
                      
                    ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}


