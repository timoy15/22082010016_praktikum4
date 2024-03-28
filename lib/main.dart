import 'package:flutter/material.dart';
import 'package:latihan_praktikum4_appjatim/jatimapp_detail.dart';
import 'jatimapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Buat MaterialColor putih
  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savory Jatim: Culinary App',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Savory Jatim: Culinary App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title), // Mengubah Widget.title menjadi widget.title
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // Menggunakan Container untuk membuat latar belakang hitam
                      return RecipeDetail(recipe: Recipe.samples[index]);    
                    },
                  ), //MaterialPageRoute
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(recipe.imageUrl),
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    ),
  );
}
