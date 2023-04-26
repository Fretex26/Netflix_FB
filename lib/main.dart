import 'package:flutter/material.dart';
import 'package:netflix/utils/card_games.dart';
import 'package:netflix/utils/horizontal_list_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List <Widget> imagesEEUU = [
    Image.asset('assets/SeriesEEUU/AsiNosVen.jpg',height: 100.0),
    Image.asset('assets/SeriesEEUU/BreakingBad.jpg',height: 100.0),
    Image.asset('assets/SeriesEEUU/Caleidoscopio.jpg',height: 100.0),
    Image.asset('assets/SeriesEEUU/ChicasBuenas.jpg',height: 100.0),
    Image.asset('assets/SeriesEEUU/Inconcebible.jpg',height: 100.0),
    Image.asset('assets/SeriesEEUU/Merlina.jpg',height: 100.0),
  ];

   List <Widget> otrosViendo = [
    Image.asset('assets/OtrosViendo/CastilloBagabundo.jpg',height: 100.0),
    Image.asset('assets/OtrosViendo/Hambre.jpg',height: 100.0),
    Image.asset('assets/OtrosViendo/InuYasha.jpg',height: 100.0),
    Image.asset('assets/OtrosViendo/Ippo.jpg',height: 100.0),
    Image.asset('assets/OtrosViendo/Palpito.jpg',height: 100.0),
    Image.asset('assets/OtrosViendo/Trolls.jpg',height: 100.0),
  ];

  List <Widget> juegos = [
    CardGame(
      image: Image.asset('assets/Juegos/AsphaltXtreme.jpg',fit: BoxFit.cover,height: 80.0), 
      title: 'Asphalt Xtreme', 
      subtitle: 'Acción'
    ),
    CardGame(
      image: Image.asset('assets/Juegos/BobEsponja.jpg',height: 80.0), 
      title: 'Bob Esponja', 
      subtitle: 'Simulación'
    ),
    CardGame(
      image: Image.asset('assets/Juegos/JugandoConFuego.jpg',height: 80.0), 
      title: 'Jugando Con Fuego', 
      subtitle: 'Simulación'
    ),
    CardGame(
      image: Image.asset('assets/Juegos/MightyQuest.jpg',height: 80.0), 
      title: 'Mighty Quest', 
      subtitle: 'Acción'
    ),
    CardGame(
      image: Image.asset('assets/Juegos/NeiledIt.jpg',height: 80.0), 
      title: 'Neiled It', 
      subtitle: 'Simulación'
    ),
    CardGame(
      image: Image.asset('assets/Juegos/TerraNil.jpg',height: 80.0),
      title: 'Terra Nil', 
      subtitle: 'Simulación'
    ),
  ];

  List <Widget> animeJapones = [
    Image.asset('assets/AnimeJapones/InuYasha.jpg',height: 100.0),
    Image.asset('assets/AnimeJapones/Ippo.jpg',height: 100.0),
    Image.asset('assets/AnimeJapones/Komi-San.jpg',height: 100.0),
    Image.asset('assets/AnimeJapones/OnePice.jpg',height: 100.0),
    Image.asset('assets/AnimeJapones/RecordOfRagnarok.jpg',height: 100.0),
    Image.asset('assets/AnimeJapones/VilandSaga.jpg',height: 100.0),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final tabs = <Tab>[
      const Tab(text: 'Series'),
      const Tab(text: 'Peliculas'),
      const Tab(text: 'Categorias'),
    ];

    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.black87,
          appBar: AppBar(
            title: Image.asset(
              height: 24.0 ,
              'assets/Portada/netflix.png'
            ),
            backgroundColor: const Color.fromARGB(50, 0, 0, 0),
            actions: const [
              Icon(Icons.search),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(Icons.person),
              ),
            ],
            bottom: TabBar(tabs: tabs),
          ),
          body: ListView(
            children: [

              Card(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Portada/GuiaDeViaje.jpg'
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const[
                            Icon(Icons.add, color: Colors.white70, size: 40.0,),
                            Text('Mi lista', style: TextStyle(color: Colors.white70),)
                          ],
                        ),
                        OutlinedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
                          ),
                          onPressed: (){}, 
                          icon: const Icon(Icons.play_arrow, color: Colors.black87,), 
                          label: const Text('Reproducir', style: TextStyle(color: Colors.black87),)
                        ),
                        Column(
                          children: const[
                            Icon(Icons.info_outline, color: Colors.white70, size: 40.0,),
                            Text('Información', style: TextStyle(color: Colors.white70))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              
              
              HorizontalListContent(
                title: 'Otros están viendo',
                images: otrosViendo,
              ),

              HorizontalListContent(
                title: 'Series de EE.UU',
                images: imagesEEUU,
              ),
              
              HorizontalListContent(
                title: 'Juegos',
                images: juegos,
              ),

              HorizontalListContent(
                title: 'Anime Japones',
                images: animeJapones,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white38,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.transparent,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            currentIndex: _selectedIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Explorar',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.gamepad_outlined,
                ),
                label: 'Juegos',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_play_outlined,
                ),
                label: 'Nuevo y popular',
              ),
            ]
          ),
        ),
      );
    
  }
}

