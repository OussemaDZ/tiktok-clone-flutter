import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tittok/accueil.dart';
import 'package:tittok/mesage.dart';
import 'package:tittok/profill.dart';
//import 'package:carousel_pro/carousel_pro.dart';



class Decouvrir extends StatelessWidget {
  const Decouvrir({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black12,border: Border.all(color: Colors.white,width: 8)),child: ListTile(leading: Icon(Icons.search,size: 30,),title: Text('Recharche'),)),
        actions: [
          Icon(CupertinoIcons.barcode_viewfinder,color: Colors.black,size: 50,),
                    SizedBox(width: 7,),
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
                onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  ),
                child: Icon(CupertinoIcons.compass_fill,color: Colors.black,size: 40,),),
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
        
      
        body: 
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: 
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                Slider(),
                ListTile(
                  leading:
                   Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(6.5),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                    child: Text('#',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,),),
                  ),
                  title: Text('eidpreps'),
                  subtitle: Text('Hashtag a la mode'),
                  trailing: Container(height: 19,color: Colors.grey,child: Text('149,4M>',style: TextStyle(fontWeight: FontWeight.bold,),),), 
                    
                  ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,
                    child: Image(
                      image: AssetImage('lib/images/image10.jpg'),
                      fit: BoxFit.cover,),
                      ),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120, child: Image(
                      image: AssetImage('lib/images/image11.jpg'),
                      fit: BoxFit.cover,),),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.blue,),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.green,),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.transparent,padding: EdgeInsets.only(top: 55),child: Text('Appuie pour \n afficher \n plus de contenu',textAlign: TextAlign.center,style: TextStyle(height: 1.3,color: Colors.grey,fontWeight: FontWeight.bold),),),
                  ],),
                ),
                ListTile(
                  leading:
                   Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(6.5),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                    child: Text('#',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,),),
                  ),
                  title: Text('مسلسلات_رمضان'),
                  subtitle: Text('Hashtag a la mode'),
                  trailing: Container(height: 19,color: Colors.grey,child: Text('499,6M>',style: TextStyle(fontWeight: FontWeight.bold,),),), 
                    
                  ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.red,),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.yellow,),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.blue,),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.green,),
                  Container(margin: EdgeInsets.all(3),height: 160, width: 120,color: Colors.transparent,padding: EdgeInsets.only(top: 55),child: Text('Appuie pour \n afficher \n plus de contenu',textAlign: TextAlign.center,style: TextStyle(height: 1.3,color: Colors.grey,fontWeight: FontWeight.bold),),),
                  ],),
                ),
                ListTile(
                  leading:
                   Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(6.5),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80),border: Border.all(width: 2,color: Colors.black54)),
                    child: Text('#',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,),),
                  ),
                  title: Text('Sport_Alger'),
                  subtitle: Text('Hashtag a la mode'),
                  trailing: Container(height: 19,color: Colors.grey,child: Text('199,8M>',style: TextStyle(fontWeight: FontWeight.bold,),),), 
                    
                  ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                  Container(margin: EdgeInsets.all(3),height: 180, width: 120,color: Colors.red,),
                  Container(margin: EdgeInsets.all(3),height: 180, width: 120,color: Colors.yellow,),
                  Container(margin: EdgeInsets.all(3),height: 180, width: 120,color: Colors.blue,),
                  Container(margin: EdgeInsets.all(3),height: 180, width: 120,color: Colors.green,),
                  Container(margin: EdgeInsets.all(3),height: 180, width: 120,color: Colors.transparent,padding: EdgeInsets.only(top: 55),child: Text('Appuie pour \n afficher \n plus de contenu',textAlign: TextAlign.center,style: TextStyle(height: 1.3,color: Colors.grey,fontWeight: FontWeight.bold),),),
                  ],),
                ),
                ],
                ),
            ),
          ),
        ),
      


      
    );
  }
}
class Slider extends StatelessWidget {
  const Slider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
          items: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child:  Container(height: 400,width: double.infinity,child: Image(image: AssetImage('lib/images/img1.jpg'),fit: BoxFit.cover,height: 40,width: 40,)),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child:  Container(height: 400,width: double.infinity,child: Image(image: AssetImage('lib/images/2.jpg'),fit: BoxFit.cover,height: 40,width: 40,)),
            ),
             Padding(
              padding: const EdgeInsets.all(0.0),
              child:  Container(height: 400,width: double.infinity,child: Image(image: AssetImage('lib/images/3.jpg'),fit: BoxFit.cover,height: 40,width: 40,)),
            ),
             Padding(
              padding: const EdgeInsets.all(0.0),
              child:  Container(height: 400,width: double.infinity,child: Image(image: AssetImage('lib/images/4.jpg'),fit: BoxFit.cover,height: 40,width: 40,)),
            ),
          ],
          //Slider Container properties
          options: CarouselOptions(
            autoPlay: true,
            
          ),
        );
      
  }
}