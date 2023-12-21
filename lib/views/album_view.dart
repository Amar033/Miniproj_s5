import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:project_m1/conststring.dart';
import 'package:project_m1/models/album.dart';
import 'package:project_m1/models/music.dart';
import 'package:spotify/spotify.dart' as sp;
class AlbumView extends StatefulWidget {
  const AlbumView({super.key});
  @override
  State<AlbumView> createState() => _AlbumViewState();
}


class _AlbumViewState extends State<AlbumView> {
  Music music = Music(trackId: '7f9I5WdyXm5q1XqnSYgQZb');
  Album album = Album(albumId: '41GuZcammIkupMPKH2OJ6I');
  Future? albumName;
  @override
  void initState(){
    
    final credentials = sp.SpotifyApiCredentials(
        ConstStrings.clientId, ConstStrings.clientSecret);
    final spotify = sp.SpotifyApi(credentials);
    spotify.albums.get(album.albumId).then((album) async{
    String? albumName = album.name;
    print(albumName);
    var tracks = await spotify.albums.getTracks(album.id!).all();
    tracks.forEach((track) {
      print(track.name);
    });
    Image image=Image.asset("assets/album3.jpg") ;
     final tempSongColor = await getImagePalette(image.image);
          if (tempSongColor != null) {
            music.songColor = tempSongColor;
      }
    if (albumName != null) {
       

      }
    
    });
  }
  Future<Color?> getImagePalette(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);
    return paletteGenerator.dominantColor?.color;
  }

  @override
  Widget build(BuildContext context) {
    Music music = Music(trackId: '7f9I5WdyXm5q1XqnSYgQZb');
    Album album = Album(albumId: '41GuZcammIkupMPKH2OJ6I');
    
    return  Scaffold(
        body: Stack(children: [
          Container(
            color: const Color.fromRGBO(107, 140, 159,1),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width:MediaQuery.of(context).size.width,
                    height:500,
                    decoration:BoxDecoration(
                      gradient: LinearGradient(begin: Alignment.topCenter,end:Alignment.bottomCenter,colors: [
                          Colors.black.withOpacity(0),Colors.black.withOpacity(0),Colors.black.withOpacity(0),Colors.black.withOpacity(1)
                      ])
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 40,),
                        Image(
                          image:const AssetImage("assets/album2.jpg"),
                          width: MediaQuery.of(context).size.width-120,
                          height:MediaQuery.of(context).size.width-120,
                          fit: BoxFit.cover,
                        ),
                        
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text("TEST"),
                            ],
                          ),
                        ),
                        
                       
                    ],),
                    
                  ),
                  
            
                ],
                
              ),
              
            ),
          )
        ],
        ),
    );
  }
  
}
