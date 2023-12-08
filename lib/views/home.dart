import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
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
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter,end:Alignment.bottomCenter,
            colors:[Colors.white.withOpacity(0.5),Colors.white.withOpacity(0),
             ] 
          )),
        ),
        SingleChildScrollView(

            physics: const BouncingScrollPhysics(),
            child:SafeArea(
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
                
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics:  BouncingScrollPhysics(),
                  padding:  EdgeInsets.all(20),
                  child: Row(
                    children: [
                      AlbumCard(),
                      SizedBox(width: 15,),
                      AlbumCard(),
                      SizedBox(width: 15,),
                      AlbumCard(),
                      SizedBox(width: 15,),
                      AlbumCard(),
                      SizedBox(width: 15,),
                      AlbumCard(),                      
                    ]),
                )
              ],
            ),
          
           ),
        )
          ],
        ),
      );
  }
}

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
   AlbumCard({
    Key key ,this.image, this.label
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/album5.jpg",width:120, height: 120,),
        const SizedBox(height:10),
        const Text("Best Mode")
      ],
    );
  }
}