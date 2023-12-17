import 'package:flutter/material.dart';
//import 'package:flutter_examen1/components/video_hero.dart';
import 'package:flutter_examen1/pages/regions_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: ListView(
        children: <Widget>[ // Ajout des crochets pour entourer les enfants
          //const VideoHero(videoPath: 'assets/video/v1.mp4'), 
          // component vidéo commenté, fait disparaitre les autres éléments si décommenté
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[        
              Text(
                'I. Nos Régions',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
          Container(
            color: const Color.fromARGB(255, 224, 224, 224),
            padding: const EdgeInsets.all(12.0),
            width: double.maxFinite,
            child: Column( // Utilisation d'un Column pour agencer les enfants en colonne
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  //... ici empilez les differentes sections du body.
                //... séparez les avec du padding
              
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim.',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>
                      const RegionPage(title:"Region Page"))
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                  ),
                  
                  child: const Row(                     
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search),
                      SizedBox(width: 8.0),
                      Text(
                    "Rechercher Par Région",
                  ),
                    ]
                  )

                ),

                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim.',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
