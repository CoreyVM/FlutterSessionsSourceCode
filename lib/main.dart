import "package:flutter/material.dart";
import "package:audioplayers/audioplayers.dart";


void main() {
  runApp(const MyApp());
}

void PlayAudio(String fileName)  async {
  AudioPlayer audioPlayer = AudioPlayer();
  audioPlayer.play(UrlSource(fileName));
}

//Task 1 (App Bar With Leading, Centred Text and Action Buttons
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Home Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.abc)),
            IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)),
          ],
        ),
      )
    );
  }
}
*/

//Task 2 Image Loading
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("My App"),
        centerTitle: true,
        ),
        body: Image.asset("lib/assets/images/Dog.jpg", width: 300,height: 300, color: Colors.purple, colorBlendMode: BlendMode.darken,)
      ),

    );
  }
}
*/

//Task 3 Audio Loading
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          PlayAudio("lib/assets/audio/cat.mp3");
        },
        child: Text("Press me"),
      ),
    ));
  }
}
*/



//Main Task
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(leading: Icon(Icons.access_alarm),
        title: Text("HomePage"), centerTitle: true,
        actions: [Icon(Icons.home)],),
        body: Scaffold(
          body: Center(
            child: Column(
              children: [
                Image.asset("lib/assets/images/Dog.jpg",height: 300,width:300,),
                Image.network("https://i.redd.it/z4b4m7ywdgz81.jpg",width:300,height: 300,),
                ElevatedButton(onPressed: () {
                  PlayAudio("lib/assets/audio/cat.mp3");
                }, child: Text("Press me!"))
              ],
            ),
          ),
        ),
      )
    );
  }
}




//Navigation Task
/*
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> pages = [HomePage(), AboutMe()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex= index;
            });
          },
          items: [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "ABC", icon: Icon(Icons.abc)),
      ]),
      body: IndexedStack(index: _currentIndex,
      children: pages),
    ));
  }
}
*/
