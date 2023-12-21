import 'package:flutter/material.dart';
import 'package:project_m1/views/album_view.dart';
import 'package:project_m1/widgets/album_card.dart';
import 'package:project_m1/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  const HomeView ({super.key});

  @override
  State<HomeView > createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:Stack(
        alignment: Alignment.topLeft,
        children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.5,
          decoration: const BoxDecoration(
          color: Color.fromRGBO(133, 48, 130, 1)),
        ),
        SingleChildScrollView(

            physics: const BouncingScrollPhysics(),
            child:Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter,end:Alignment.bottomCenter,
                colors:[Colors.black.withOpacity(0),Colors.black.withOpacity(0.9),Colors.black.withOpacity(1),Colors.black.withOpacity(1),Colors.black.withOpacity(1),Colors.black.withOpacity(1),Colors.black.withOpacity(1)] 
              )),
              child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height:40),
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 15),
                    child:  Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recently Played",style: Theme.of(context).textTheme.headlineSmall,),
                        
                       const  Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 20,),
                            Icon(Icons.settings),
                          ],)
                      ],
                    ),
                  ),
                  
                    SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics:  const BouncingScrollPhysics(),
                    padding:  const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        AlbumCard(label:"AstroWorld",image: const AssetImage("assets/album2.jpg"), onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const AlbumView()));},),
                        const SizedBox(width: 15,),
                        AlbumCard(label:"After Hours",image: const AssetImage("assets/album1.png"),onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const AlbumView()));}),
                        const SizedBox(width: 15,),
                        AlbumCard(label:"Graduation",image: const AssetImage("assets/album9.jpg"),onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const AlbumView()));}),
                        const SizedBox(width: 15,),
                        AlbumCard(label:"Flower Boy",image: const AssetImage("assets/album4.jpg"),onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const AlbumView()));}),
                        const SizedBox(width: 15,),
                        AlbumCard(label:"AM",image: const AssetImage("assets/album13.jpg"),onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const AlbumView()));}),                      
                      ]),
                  ),
              
                  const SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [Text("Good evening",style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: 16,),
                    const Row(
                      
                      children: [
                      RowAlbumCard(label: "Beauty Behind \nthe Madness",image: AssetImage("assets/album12.jpg"),),
                      SizedBox(width: 16,),
                      RowAlbumCard(label: "AM",image: AssetImage("assets/album13.jpg"),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      
                      children: [
                      RowAlbumCard(label: "Paradise",image: AssetImage("assets/album10.png"),),
                      SizedBox(width: 16,),
                      RowAlbumCard(label: "Blonde",image: AssetImage("assets/album8.jpeg"),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      
                      children: [
                      RowAlbumCard(label: "Flower Boy",image: AssetImage("assets/album4.jpg"),),
                      SizedBox(width: 16,),
                      RowAlbumCard(label: "good kid,\nm.A.A.d city",image: AssetImage("assets/album14.jpg"),),
                      ],
                    )
                            
                            ],),
                  ),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16,16,5),
                      child: Text("Based on your mood",style: Theme.of(context).textTheme.headline6),
                    ),
                    Padding(
                      padding: const  EdgeInsets.fromLTRB(16, 0,16,16),
                      child: Text("Listen to Kendrick Lamar, Tame Impala, JOJI,Playboi carti and more",style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,)
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: [
                        SongCard(image:AssetImage("assets/album5.jpg")),
                        SizedBox(width: 16,),
                        SongCard(image:AssetImage("assets/album6.png")),
                        SizedBox(width: 16,),
                        SongCard(image:AssetImage("assets/album7.png")),
                        SizedBox(width: 16,),
                        SongCard(image:AssetImage("assets/album11.jpg")),
                      ]),
                    )
              
                  ],),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Based on your recent Listening",style: Theme.of(context).textTheme.headline6),
                    ),
                    
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: [
                        SongCard(image:AssetImage("assets/album14.jpg")),
                        SizedBox(width: 16,),
                        SongCard(image:AssetImage("assets/album16.jpg")),
                        SizedBox(width: 16,),
                        SongCard(image:AssetImage("assets/album15.png")),
                        SizedBox(width: 16,),
                        SongCard(image:AssetImage("assets/album17.jpg")),
                      ]),
                    )
              
                  ],)
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

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    super.key, required this.image, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:1 ,
      child: Container(
        
        decoration: BoxDecoration(color: Colors.white10,borderRadius: BorderRadius.circular(8)),
        clipBehavior:Clip.antiAlias,
          child: Row(
            children: [
              Image(image: image ,height:48,width: 48,fit:BoxFit.cover,),
              const SizedBox(width: 8,),
              Text(label)
            ],
          ),
        ),
    );
  }
}

