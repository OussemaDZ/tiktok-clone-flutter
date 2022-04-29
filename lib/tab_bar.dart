import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tittok/profill.dart';



class TabBare extends StatefulWidget {
  const TabBare({ Key? key }) : super(key: key);

  @override
  State<TabBare> createState() => _TabBarState();
}

class _TabBarState extends State<TabBare> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(children: [
        
        Container(
          decoration: BoxDecoration(
             border: Border(
              bottom: BorderSide(width: 2,color: Colors.grey.shade200),
             )
           ),
          child: TabBar(
            
            indicator: BoxDecoration(
               border: Border(
              bottom: BorderSide(width: 2))
            
            ),
            tabs: [
              Tab(icon: Icon(Icons.stacked_bar_chart,color: Colors.black,)),
             Tab(icon: Icon(Icons.favorite_border,color: Colors.black,)),
             Tab(icon: Icon(CupertinoIcons.lock,color: Colors.black,)),
          ],),
        ),
        SizedBox(height: 700 ,
        child: TabBarView(
          children: [
          LtsProf(),
          List2card(),
          Container(padding: EdgeInsets.all(20),child: Text('Ce compte est Privée',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
        ]),
        ),
      ],
           
      ),
    );
  }
}

class cards extends StatelessWidget {
  String? image;
  String? vue;
  cards(this.image,this.vue);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: 128.2,
          child: Image(image: AssetImage(image!),fit: BoxFit.cover,),    
        ),
        Positioned(
          left: 5,
          bottom: 5,
          child: Row(
            children: [
              Icon(Icons.play_arrow_outlined,color: Colors.white,),
              Text(vue!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        )
      ],
    );
  }
}




class LtsProf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 4,
            runSpacing: 4,
            children: [
              cards('lib/images/2.jpg', '30.7K'),
              cards('lib/images/3.jpg', '100.9K'),
              cards('lib/images/4.jpg', '3.4M'),
              cards('lib/images/img1.jpg', '124'),
            ], 
          ),
          
        ),
        SizedBox(height: 15,),
           Container(
            color: Colors.grey.shade200,
            child: ListTile(
              leading: RichText(
                text: TextSpan(
                  children: [
                        TextSpan(
                          text: 'Remplis ton profil \n' ,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w900
                            ), 
                          ),
                        TextSpan(
                          text: '2/3 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                            )
                          ),
                          TextSpan(
                          text: 'terminée ',
                          style: TextStyle(
                            color: Colors.grey[600]
                            )
                          ),
              ])
              )
            ),
          ),
          
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
              Bible('Ajouter ta biographie', 'Qu-est-ce que les\ngens devraient savoir sur toi', 'Ajouter', Colors.red, Colors.white,Icon(Icons.description,size: 30,)),
              Bible('Ajouter ton nom', 'Comment doit-on tappeler', 'Modifier', Colors.white, Colors.black,Icon(Icons.person,size:30)),
              Bible('Ajouter une photo', 'Qulle photo te représente ?', 'Modifier', Colors.white, Colors.black,Icon(Icons.photo_camera,size:30)),
              
            ],)),
          )
      ],
    );
  }
}


class List2card extends StatelessWidget {
  const List2card({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
            direction: Axis.horizontal,
            spacing: 4,
            runSpacing: 4,
            children: [
              cards('lib/images/2.jpg', '30.7K'),
              cards('lib/images/3.jpg', '100.9K'),
              cards('lib/images/4.jpg', '3.4M'),
              cards('lib/images/img1.jpg', '124'),
               cards('lib/images/5.jpg', '30.7K'),
              cards('lib/images/6.jpg', '100.9K'),
              cards('lib/images/7.jpg', '3.4M'),
              cards('lib/images/8.jpg', '124'),
               cards('lib/images/9.jpg', '30.7K'),
              cards('lib/images/10.jpg', '100.9K'),
              cards('lib/images/11.jpg', '3.4M'),
              cards('lib/images/12.jpg', '124'),
            ], 
          ),
      
    );
  }
}