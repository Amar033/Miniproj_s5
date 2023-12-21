import 'package:flutter/material.dart';
import 'package:project_m1/widgets/sond_add.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  
  const SongCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 140,
      child:  Column(children: [
        Image(image:image,width: 140,height: 140),
        const SizedBox(height: 10,),
        Center(child: Text(sondadd(image.assetName),style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,maxLines: 2,))
      ]),
    );
  }
}