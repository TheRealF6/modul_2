/* = TEMPLATE = */ // NOTE : LATIHAN DAN MATERINYA BELUM SELESAI SEMUA, NANTI SELESAIN
import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
/* = TEMPLATE = */

/* = PENDAHULUAN = */

/* - PROJECT HELLO WORLD - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: const Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }
/* - PROJECT HELLO WORLD - */

/* - PROJECT HELLO WORLD [NAMA] - */
/* NORMAL */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   String _nama = "";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               onChanged: (text) {
//                 _nama = text;
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {}); //refresh
//               },
//               child: const Text('Klik Ini'),
//             ),
//             Text('Halo $_nama'), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }

/* IMPROVED */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _nama = textEditController.text; //akses text via controller
//                 }); //refresh
//               },
//               child: const Text('Klik Ini'),
//             ),
//             Text('Halo $_nama'), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }

/* Latihan 1 */
// import 'package:flutter/material.dart';

// void main() => runApp(RectangleCalculator());

// class RectangleCalculator extends StatefulWidget {
//   @override
//   _RectangleCalculatorState createState() => _RectangleCalculatorState();
// }

// class _RectangleCalculatorState extends State<RectangleCalculator> {
//   final lengthController = TextEditingController();
//   final widthController = TextEditingController();
//   double area = 0;
//   double perimeter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Rectangle Calculator',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Rectangle Calculator'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 controller: lengthController,
//                 decoration: InputDecoration(
//                   labelText: 'Length',
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 controller: widthController,
//                 decoration: InputDecoration(
//                   labelText: 'Width',
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 double length = double.tryParse(lengthController.text) ?? 0;
//                 double width = double.tryParse(widthController.text) ?? 0;
//                 setState(() {
//                   area = length * width;
//                   perimeter = 2 * (length + width);
//                 });
//               },
//               child: Text('Calculate'),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Area: $area\nPerimeter: $perimeter',
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
/* - PROJECT HELLO WORLD [NAMA] - */

/* - PADDING + FORMATTING TEXT + FORMATTING BUTTON- */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//                 padding: EdgeInsets.all(20), //20 pixel ke semua arah
//                 child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _nama =
//                           textEditController.text; //akses text via controller
//                     }); //refresh
//                   },
//                   child: const Text('   Klik Ini   '),
//                   style: ElevatedButton.styleFrom(
//                       textStyle: const TextStyle(fontSize: 20),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 50, vertical: 20),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                       )),
//                 )),
//             Text(
//               'Halo $_nama',
//               style: const TextStyle(
//                   fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
//             ), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }

/* Latihan 2 */
// import 'package:flutter/material.dart';

// void main() => runApp(RectangleCalculator());

// class RectangleCalculator extends StatefulWidget {
//   @override
//   _RectangleCalculatorState createState() => _RectangleCalculatorState();
// }

// class _RectangleCalculatorState extends State<RectangleCalculator> {
//   final lengthController = TextEditingController();
//   final widthController = TextEditingController();
//   double area = 0;
//   double perimeter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Rectangle Calculator',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Rectangle Calculator'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 controller: lengthController,
//                 decoration: InputDecoration(
//                   labelText: 'Length',
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 controller: widthController,
//                 decoration: InputDecoration(
//                   labelText: 'Width',
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 double length = double.tryParse(lengthController.text) ?? 0;
//                 double width = double.tryParse(widthController.text) ?? 0;
//                 setState(() {
//                   area = length * width;
//                   perimeter = 2 * (length + width);
//                 });
//               },
//               child: Text('Calculate'),
//             ),
//             SizedBox(height: 16),
//             Container(
//               padding: EdgeInsets.all(16),
//               child: Text(
//                 'Area: $area\nPerimeter: $perimeter',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.normal,
//                   fontFamily: 'Roboto',
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
/* - PADDING + FORMATTING TEXT - */

/* = PENDAHULUAN = */

/* = BUILT-IN UI WIDGET = */

/* - IMAGE WIDGET - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   String pilihanSalam = "pagi";
//   String pilihanSalamOut = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<DropdownMenuItem<String>> salam = [];
//     var itm1 = const DropdownMenuItem<String>(
//       value: "pagi",
//       child: Text("selamat pagi"),
//     );
//     var itm2 = const DropdownMenuItem<String>(
//       value: "siang",
//       child: Text("selamat siang"),
//     );
//     salam.add(itm1);
//     salam.add(itm2);

//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             DropdownButton(
//               value: pilihanSalam,
//               items: salam,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   if (newValue != null) {
//                     pilihanSalam = newValue;
//                   }
//                 });
//               },
//             ),
//             Image.network(
//               'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
//               height: 200,
//               width: 200,
//               fit: BoxFit.fill,
//             ),
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//               padding: EdgeInsets.all(20), //20 pixel ke semua arah
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text; //akses text via controller
//                     pilihanSalamOut = pilihanSalam;
//                   }); //refresh
//                 },
//                 child: const Text('Klik Ini'),
//               ),
//             ),
//             Text(
//               _nama != "" ? 'Halo $_nama  selamat $pilihanSalamOut' : "",
//               style: const TextStyle(
//                   fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
//             ), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }
/* - IMAGE WIDGET - */

/* - DROPDOWN WIDGET - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   String pilihanSalam = "pagi";
//   String pilihanSalamOut = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<DropdownMenuItem<String>> salam = [];
//     var itm1 = const DropdownMenuItem<String>(
//       value: "pagi",
//       child: Text("selamat pagi"),
//     );
//     var itm2 = const DropdownMenuItem<String>(
//       value: "siang",
//       child: Text("selamat siang"),
//     );
//     salam.add(itm1);
//     salam.add(itm2);

//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             DropdownButton(
//               value: pilihanSalam,
//               items: salam,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   if (newValue != null) {
//                     pilihanSalam = newValue;
//                   }
//                 });
//               },
//             ),
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//               padding: EdgeInsets.all(20), //20 pixel ke semua arah
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text; //akses text via controller
//                     pilihanSalamOut = pilihanSalam;
//                   }); //refresh
//                 },
//                 child: const Text('Klik Ini'),
//               ),
//             ),
//             Text(
//               _nama != "" ? 'Halo $_nama  selamat $pilihanSalamOut' : "",
//               style: const TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.cyan),
//             ), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }

/* Latihan 3 */
// Pada kode tersebut, pilihanSalam digunakan sebagai nilai awal dari
// DropdownButton. Ketika pengguna memilih opsi yang berbeda dari
// DropdownButton, nilai pilihanSalam akan diperbarui dan kemudian disimpan
// dalam variabel pilihanSalamOut saat tombol ditekan. Oleh karena itu,
// pilihanSalamOut akan berisi nilai pilihanSalam terbaru yang dipilih oleh
// pengguna setelah tombol ditekan, dan akan ditampilkan dalam teks di bawahnya
// setelah nama dimasukkan.
/* - DROPDOWN WIDGET - */

/* - BUTTON - */
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String _outputText = '';

//   void _handleButtonPress(String buttonText) {
//     setState(() {
//       _outputText = 'You pressed the "$buttonText" button';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Button Variants',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Button Variants'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FloatingActionButton(
//                 onPressed: () {
//                   _handleButtonPress('Floating Action');
//                 },
//                 child: const Icon(Icons.add),
//               ),
//               const SizedBox(height: 16),
//               TextButton(
//                 onPressed: () {
//                   _handleButtonPress('Text');
//                 },
//                 child: const Text('Text Button'),
//               ),
//               const SizedBox(height: 16),
//               IconButton(
//                 onPressed: () {
//                   _handleButtonPress('Icon');
//                 },
//                 icon: const Icon(Icons.favorite),
//               ),
//               const SizedBox(height: 16),
//               PopupMenuButton<String>(
//                 onSelected: (String result) {
//                   _handleButtonPress(result);
//                 },
//                 itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//                   const PopupMenuItem<String>(
//                     value: 'Item 1',
//                     child: Text('Item 1'),
//                   ),
//                   const PopupMenuItem<String>(
//                     value: 'Item 2',
//                     child: Text('Item 2'),
//                   ),
//                   const PopupMenuItem<String>(
//                     value: 'Item 3',
//                     child: Text('Item 3'),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               CupertinoButton(
//                 onPressed: () {
//                   _handleButtonPress('Cupertino');
//                 },
//                 child: const Text('Cupertino Button'),
//               ),
//               const SizedBox(height: 16),
//               Text(
//                 _outputText,
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
/* - BUTTON - */

/* - SELECTION WIDGET - */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String _selectedColor = 'Red';
//   String _selectedLanguage = 'Dart';
//   bool _isSwitched = false;
//   int _selectedRadioValue = 0;

//   final List<String> _colors = <String>['Red', 'Green', 'Blue'];
//   final List<String> _languages = <String>[
//     'Dart',
//     'Java',
//     'JavaScript',
//     'Python'
//   ];

//   void _onColorSelected(String color) {
//     setState(() {
//       _selectedColor = color;
//     });
//   }

//   void _onLanguageSelected(String language) {
//     setState(() {
//       _selectedLanguage = language;
//     });
//   }

//   void _onSwitchChanged(bool value) {
//     setState(() {
//       _isSwitched = value;
//     });
//   }

//   void _onRadioValueChanged(int? value) {
//     setState(() {
//       _selectedRadioValue = value!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Selection Widgets Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Selection Widgets Example'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Select a color:'),
//               Wrap(
//                 spacing: 8.0,
//                 children: _colors
//                     .map((color) => ChoiceChip(
//                           label: Text(color),
//                           selected: _selectedColor == color,
//                           onSelected: (selected) => _onColorSelected(color),
//                         ))
//                     .toList(),
//               ),
//               SizedBox(height: 16.0),
//               Text('Select a programming language:'),
//               Wrap(
//                 spacing: 8.0,
//                 children: _languages
//                     .map((language) => FilterChip(
//                           label: Text(language),
//                           selected: _selectedLanguage == language,
//                           onSelected: (selected) =>
//                               _onLanguageSelected(language),
//                         ))
//                     .toList(),
//               ),
//               SizedBox(height: 16.0),
//               Text('Enable feature:'),
//               Switch(
//                 value: _isSwitched,
//                 onChanged: _onSwitchChanged,
//               ),
//               SizedBox(height: 16.0),
//               Text('Select a number:'),
//               Row(
//                 children: [
//                   Radio(
//                     value: 0,
//                     groupValue: _selectedRadioValue,
//                     onChanged: _onRadioValueChanged,
//                   ),
//                   Text('Zero'),
//                   Radio(
//                     value: 1,
//                     groupValue: _selectedRadioValue,
//                     onChanged: _onRadioValueChanged,
//                   ),
//                   Text('One'),
//                   Radio(
//                     value: 2,
//                     groupValue: _selectedRadioValue,
//                     onChanged: _onRadioValueChanged,
//                   ),
//                   Text('Two'),
//                 ],
//               ),
//               SizedBox(height: 16.0),
//               Text('Selected color: $_selectedColor'),
//               Text('Selected programming language: $_selectedLanguage'),
//               Text('Feature enabled: $_isSwitched'),
//               Text('Selected number: $_selectedRadioValue'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/* Latihan 4A */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   String _nama = "";
//   String _gender = "";
//   bool _sudahBekerja = false;
//   double _tinggiBadan = 100.0;
//   List<String> _makananFavorit = [];
//   String? _provinsiAsal;
//   bool isSaved = false;

//   final List<String> _listMakanan = [
//     "Nasi Goreng",
//     "Mie Goreng",
//     "Ayam Goreng",
//     "Sate",
//     "Bakso",
//     "Gado-Gado",
//     "Pizza",
//     "Burger",
//     "Kentang Goreng",
//     "Steak",
//   ];

//   final List<String> _listProvinsi = [
//     "Aceh",
//     "Sumatera Utara",
//     "Sumatera Barat",
//     "Riau",
//     "Jambi",
//     "Sumatera Selatan",
//     "Bengkulu",
//     "Lampung",
//     "Bangka Belitung",
//     "Kepulauan Riau",
//     "Jakarta",
//     "Jawa Barat",
//     "Jawa Tengah",
//     "Yogyakarta",
//     "Jawa Timur",
//     "Banten",
//     "Bali",
//     "Nusa Tenggara Barat",
//     "Nusa Tenggara Timur",
//     "Kalimantan Barat",
//     "Kalimantan Tengah",
//     "Kalimantan Selatan",
//     "Kalimantan Timur",
//     "Kalimantan Utara",
//     "Sulawesi Utara",
//     "Sulawesi Tengah",
//     "Sulawesi Selatan",
//     "Sulawesi Tenggara",
//     "Gorontalo",
//     "Maluku",
//     "Maluku Utara",
//     "Papua Barat",
//     "Papua",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Input Data Mahasiswa',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Input Data Mahasiswa'),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 TextField(
//                   onChanged: (String value) {
//                     setState(() {
//                       _nama = value;
//                     });
//                   },
//                   decoration: InputDecoration(
//                     labelText: 'Nama',
//                   ),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text('Jenis Kelamin'),
//                 RadioListTile(
//                   title: Text('Laki-laki'),
//                   value: 'Laki-laki',
//                   groupValue: _gender,
//                   onChanged: (value) {
//                     setState(() {
//                       _gender = value!;
//                     });
//                   },
//                 ),
//                 RadioListTile(
//                   title: Text('Perempuan'),
//                   value: 'Perempuan',
//                   groupValue: _gender,
//                   onChanged: (value) {
//                     setState(() {
//                       _gender = value!;
//                     });
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 Text('Sudah Bekerja?'),
//                 Switch(
//                   value: _sudahBekerja,
//                   onChanged: (value) {
//                     setState(() {
//                       _sudahBekerja = value;
//                     });
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 Text('Tinggi Badan'),
//                 Slider(
//                   value: _tinggiBadan,
//                   min: 0.0,
//                   max: 200.0,
//                   divisions: 100,
//                   label: _tinggiBadan.toStringAsFixed(1),
//                   onChanged: (double value) {
//                     setState(() {
//                       _tinggiBadan = value;
//                     });
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 Text('Makanan Favorit'),
//                 Column(
//                   children: _listMakanan
//                       .map(
//                         (makanan) => CheckboxListTile(
//                           title: Text(makanan),
//                           value: _makananFavorit.contains(makanan),
//                           onChanged: (value) {
//                             setState(() {
//                               if (value != null && value) {
//                                 _makananFavorit.add(makanan);
//                               } else {
//                                 _makananFavorit.remove(makanan);
//                               }
//                             });
//                           },
//                         ),
//                       )
//                       .toList(),
//                 ),
//                 SizedBox(height: 16.0),
//                 Text('Provinsi Asal'),
//                 DropdownButton<String>(
//                   value: _provinsiAsal,
//                   hint: Text('Pilih Provinsi'),
//                   items: _listProvinsi.map((provinsi) {
//                     return DropdownMenuItem<String>(
//                       value: provinsi,
//                       child: Text(provinsi),
//                     );
//                   }).toList(),
//                   onChanged: (newValue) {
//                     setState(() {
//                       _provinsiAsal = newValue;
//                     });
//                   },
//                 ),
//                 Center(
//                     child: Text(
//                   '$_nama | $_gender | ${_sudahBekerja ? "Sudah Bekerja" : "Belum Bekerja"} | $_tinggiBadan cm | ${_makananFavorit.isEmpty ? '' : _makananFavorit.join(', ')} | ${_provinsiAsal ?? ""}',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.normal,
//                     fontSize: 40.0,
//                     fontFamily: 'Helvetica',
//                   ),
//                 )),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
/* - SELECTION WIDGET - */

/* - CARD & LISTTILE - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "Flutter Demo",
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Card"),
//           ),
//           body: const MyHomePage(),
//         ));
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: ListTile(
//             onTap: () {},
//             leading: Image.network(
//                 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
//             trailing: const Icon(Icons.more_vert),
//             title: const Text('Judul'),
//             subtitle: const Text("ini Subjudul"),
//             tileColor: Colors.white70));
//   }
// }
/* - CARD & LISTTILE - */

/* - FORM VALIDATOR - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final _formKey = GlobalKey<FormState>();
//   final textEditController = TextEditingController();
//   String _nama = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Hello App',
//         home: Form(
//           key: _formKey,
//           child: Scaffold(
//             appBar: AppBar(
//               title: const Text('Hello'),
//             ),
//             body: Center(
//                 child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text('Masukan Nama :'),
//                 TextFormField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Tidak boleh kosong';
//                     }
//                     return null;
//                   },
//                   controller: textEditController, //controller
//                 ),

//                 Padding(
//                   padding: EdgeInsets.all(20), //20 pixel ke semua arah
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         setState(() {
//                           _nama = textEditController.text;
//                         }); //refresh
//                       }
//                     },
//                     child: const Text('Klik Ini'),
//                   ),
//                 ),
//                 Text(
//                   'Halo $_nama',
//                   style: const TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.red),
//                 ), //hasil disini
//               ],
//             )), //column center
//           ), //Scaffold
//         )); //Material APP
//   }
// }

/* Latihan 4B */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String _nama = "";
//   String _gender = "";
//   bool _sudahBekerja = false;
//   double _tinggiBadan = 100.0;
//   List<String> _makananFavorit = [];
//   String? _provinsiAsal;
//   bool isSaved = false;

//   final List<String> _listMakanan = [
//     "Nasi Goreng",
//     "Mie Goreng",
//     "Ayam Goreng",
//   ];

//   final List<String> _listProvinsi = [
//     "Jawa Barat",
//     "Jawa Tengah",
//     "Jawa Timur",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Input Data Mahasiswa',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Input Data Mahasiswa'),
//           ),
//           body: SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     TextFormField(
//                       validator: (String? value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Nama harus diisi';
//                         }
//                         return null;
//                       },
//                       onChanged: (String value) {
//                         setState(() {
//                           _nama = value;
//                         });
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Nama',
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Jenis Kelamin'),
//                     FormField(
//                       builder: (FormFieldState<dynamic> state) {
//                         return Column(
//                           children: <Widget>[
//                             RadioListTile(
//                               title: Text('Laki-laki'),
//                               value: 'Laki-laki',
//                               groupValue: _gender,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _gender = value as String;
//                                 });
//                               },
//                             ),
//                             RadioListTile(
//                               title: Text('Perempuan'),
//                               value: 'Perempuan',
//                               groupValue: _gender,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _gender = value as String;
//                                 });
//                               },
//                             ),
//                           ],
//                         );
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Apakah Anda sudah bekerja?'),
//                     SwitchListTile(
//                       title: Text('Sudah Bekerja'),
//                       value: _sudahBekerja,
//                       onChanged: (value) {
//                         setState(() {
//                           _sudahBekerja = value;
//                         });
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Tinggi Badan (cm)'),
//                     Slider(
//                       value: _tinggiBadan,
//                       min: 0.0,
//                       max: 200.0,
//                       divisions: 100,
//                       label: _tinggiBadan.toStringAsFixed(1),
//                       onChanged: (double value) {
//                         setState(() {
//                           _tinggiBadan = value;
//                         });
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Makanan Favorit'),
//                     Wrap(
//                       children: _listMakanan.map((makanan) {
//                         return CheckboxListTile(
//                           title: Text(makanan),
//                           value: _makananFavorit.contains(makanan),
//                           onChanged: (value) {
//                             setState(() {
//                               if (value!) {
//                                 _makananFavorit.add(makanan);
//                               } else {
//                                 _makananFavorit.remove(makanan);
//                               }
//                             });
//                           },
//                         );
//                       }).toList(),
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Provinsi Asal'),
//                     DropdownButtonFormField<String>(
//                       value: _provinsiAsal,
//                       items: _listProvinsi.map((provinsi) {
//                         return DropdownMenuItem<String>(
//                           value: provinsi,
//                           child: Text(provinsi),
//                         );
//                       }).toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           _provinsiAsal = value;
//                         });
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {
//                               setState(() {
//                                 isSaved = true;
//                               });
//                             }
//                           },
//                           child: Text('Simpan'),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 16.0),
//                     if (isSaved == true) ...[
//                       Text('Nama: $_nama'),
//                       Text('Jenis Kelamin: $_gender'),
//                       Text(
//                           'Sudah Bekerja: ${_sudahBekerja ? "Sudah" : "Belum"}'),
//                       Text('Tinggi Badan: $_tinggiBadan cm'),
//                       Text('Makanan Favorit: ${_makananFavorit.join(", ")}'),
//                       Text('Provinsi Asal: $_provinsiAsal'),
//                     ],
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }
/* - FORM VALIDATOR - */

/* - SNACKBAR - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body:
//             const BodyApp(), //contoh pemisahan nilai atribut di class terpisah
//       ),
//     );
//   }
// }

// class BodyApp extends StatelessWidget {
//   const BodyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           const snackBar = SnackBar(
//             duration: Duration(seconds: 2),
//             content: Text('Halo ini snack bar'),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: const Text("Tap ini"),
//       ),
//     );
//   }
// }
/* - SNACKBAR - */

/* - DIALOG - */
// import 'package:flutter/material.dart';

// //MaterialApp perlu paling atas untuk mendapatkan
// //context alertdialog
// void main() => runApp(new MaterialApp(home: new MyApp()));

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My App'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ElevatedButton(
//               onPressed: () => tampilkanDialog(context),
//               child: const Text('Klik Ini'),
//             ),
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }

//   void tampilkanDialog(BuildContext context) {
//     showDialog<String>(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//         title: const Text('Konfirmasi'),
//         content: const Text('Anda yakin membatalkan?'),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () => Navigator.pop(context, 'Cancel'),
//             child: const Text('Batal'),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context, 'OK'),
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }
// }

/* Latihan 5 */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// void tampilkanDialog(BuildContext context) {
//   showDialog<String>(
//     context: context,
//     builder: (BuildContext context) => AlertDialog(
//       title: const Text('Konfirmasi'),
//       content: const Text('Apakah data sudah benar?'),
//       actions: <Widget>[
//         TextButton(
//           onPressed: () => Navigator.pop(context, 'Cancel'),
//           child: const Text('Batal'),
//         ),
//         TextButton(
//           onPressed: () => Navigator.pop(context, 'OK'),
//           child: const Text('OK'),
//         ),
//       ],
//     ),
//   );
// }

// class _MyAppState extends State<MyApp> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String _nama = "";
//   String _gender = "";
//   bool _sudahBekerja = false;
//   double _tinggiBadan = 100.0;
//   List<String> _makananFavorit = [];
//   String? _provinsiAsal;
//   bool isSaved = false;

//   final List<String> _listMakanan = [
//     "Nasi Goreng",
//     "Mie Goreng",
//     "Ayam Goreng",
//   ];

//   final List<String> _listProvinsi = [
//     "Jawa Barat",
//     "Jawa Tengah",
//     "Jawa Timur",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Input Data Mahasiswa',
//         home: ScaffoldMessenger(
//             child: Scaffold(
//           appBar: AppBar(
//             title: Text('Input Data Mahasiswa'),
//           ),
//           body: SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     TextFormField(
//                       validator: (String? value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Nama harus diisi';
//                         }
//                         return null;
//                       },
//                       onChanged: (String value) {
//                         setState(() {
//                           _nama = value;
//                         });
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Nama',
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Jenis Kelamin'),
//                     FormField(
//                       builder: (FormFieldState<dynamic> state) {
//                         return Column(
//                           children: <Widget>[
//                             RadioListTile(
//                               title: Text('Laki-laki'),
//                               value: 'Laki-laki',
//                               groupValue: _gender,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _gender = value as String;
//                                 });
//                               },
//                             ),
//                             RadioListTile(
//                               title: Text('Perempuan'),
//                               value: 'Perempuan',
//                               groupValue: _gender,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _gender = value as String;
//                                 });
//                               },
//                             ),
//                           ],
//                         );
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Apakah Anda sudah bekerja?'),
//                     SwitchListTile(
//                       title: Text('Sudah Bekerja'),
//                       value: _sudahBekerja,
//                       onChanged: (value) {
//                         setState(() {
//                           _sudahBekerja = value;
//                         });
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Tinggi Badan (cm)'),
//                     Slider(
//                       value: _tinggiBadan,
//                       min: 0.0,
//                       max: 200.0,
//                       divisions: 100,
//                       label: _tinggiBadan.toStringAsFixed(1),
//                       onChanged: (double value) {
//                         setState(() {
//                           _tinggiBadan = value;
//                         });
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Makanan Favorit'),
//                     Wrap(
//                       children: _listMakanan.map((makanan) {
//                         return CheckboxListTile(
//                           title: Text(makanan),
//                           value: _makananFavorit.contains(makanan),
//                           onChanged: (value) {
//                             setState(() {
//                               if (value!) {
//                                 _makananFavorit.add(makanan);
//                               } else {
//                                 _makananFavorit.remove(makanan);
//                               }
//                             });
//                           },
//                         );
//                       }).toList(),
//                     ),
//                     SizedBox(height: 16.0),
//                     Text('Provinsi Asal'),
//                     DropdownButtonFormField<String>(
//                       value: _provinsiAsal,
//                       items: _listProvinsi.map((provinsi) {
//                         return DropdownMenuItem<String>(
//                           value: provinsi,
//                           child: Text(provinsi),
//                         );
//                       }).toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           _provinsiAsal = value;
//                         });
//                       },
//                     ),
//                     SizedBox(height: 16.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {
//                               setState(() {
//                                 isSaved = true;
//                               });
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(
//                                   content: Text('Data berhasil disimpan'),
//                                   duration: Duration(seconds: 5),
//                                 ),
//                               );
//                             }
//                           },
//                           child: Text('Simpan'),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 16.0),
//                     if (isSaved == true) ...[
//                       Text('Nama: $_nama'),
//                       Text('Jenis Kelamin: $_gender'),
//                       Text(
//                           'Sudah Bekerja: ${_sudahBekerja ? "Sudah" : "Belum"}'),
//                       Text('Tinggi Badan: $_tinggiBadan cm'),
//                       Text('Makanan Favorit: ${_makananFavorit.join(", ")}'),
//                       Text('Provinsi Asal: $_provinsiAsal'),
//                     ],
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         )));
//   }
// }
/* - DIALOG - */

/* - LISTVIEW - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: ListView(padding: EdgeInsets.all(20), children: [
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 1a')),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World xxx')),
//           ]),
//         ),
//       ),
//     );
//   }
// }
/* - LISTVIEW - */

/* - LISTVIEW BUILDER() + PENANGANAN TAP PADA BARIS - */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   List<String> data = []; //data untuk listview

//   @override
//   void initState() {
//     super.initState();
//     // isi data listview
//     for (int i = 0; i < 20; i++) {
//       data.add("Data ke $i ");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Welcome to Flutter'),
//         ),
//         body: Center(
//           //gunakan listview builder
//           child: ListView.builder(
//             itemCount: data.length,
//             itemBuilder: (context, index) {
//               return Card(
//                   child: ListTile(
//                 onTap: () {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     duration: Duration(seconds: 1),
//                     content: Text('Halo ${data[index]}'),
//                   ));
//                 },
//                 title: Text(data[index]),
//               ));
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

/* Latihan 6 */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);

//   final List<Map<String, String>> people = [
//     {'name': 'Andi', 'hobby': 'Tidur', 'photo': 'andi.jpg'},
//     {'name': 'Rani', 'hobby': 'Menggambar', 'photo': 'rani.jpg'},
//     {'name': 'Budi', 'hobby': 'Makan', 'photo': 'budi.jpg'},
//     {'name': 'Yani', 'hobby': 'Menulis', 'photo': 'yani.jpg'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: ListView.builder(
//             padding: EdgeInsets.all(20),
//             itemCount: people.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Card(
//                 child: Row(
//                   children: [
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: Image.asset(
//                           people[index]['photo']!,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: Text(people[index]['name']!),
//                         subtitle: Text(people[index]['hobby']!),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
/* - LISTVIEW BUILDER() - */

/* - LAYOUT - */

/* CONTAINER */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//               color: const Color(0xff7c94b6),
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all()),
//           padding: EdgeInsets.all(14),
//           child: Text('Hello World 2!'),
//         ),
//       ),
//     );
//   }
// }
/* CONTAINER */

/* ALIGN */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Hello'),
//           ),
//           body: Align(
//               alignment: Alignment.topCenter,
//               child: Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 child: Text('Hello World',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w100,
//                       fontStyle: FontStyle.normal,
//                       fontSize: 60.0,
//                       fontFamily: 'Roboto',
//                     )),
//               ))),
//     );
//   }
// }
/* ALIGN */

/* ROW & COLUMN */
/* Normal */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 1!')),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 2!')),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 3!')),
//           ]),
//         ),
//       ),
//     );
//   }
// }

/* Row & Column Combination */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: EdgeInsets.all(14),
//                           child: Text('Hello World 1a')),
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: EdgeInsets.all(14),
//                           child: Text('Hello World 1b')),
//                     ])),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: EdgeInsets.all(14),
//                           child: Text('Hello World 2a')),
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: EdgeInsets.all(14),
//                           child: Text('Hello World 2b')),
//                     ])),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: EdgeInsets.all(14),
//                           child: Text('Hello World 3a')),
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: EdgeInsets.all(14),
//                           child: Text('Hello World 3b')),
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: EdgeInsets.all(14),
//                           child: Text('Hello World 3c')),
//                     ])),
//           ]),
//         ),
//       ),
//     );
//   }
// }
/* ROW & COLUMN */

/* EXPANDED */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: const EdgeInsets.all(14),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         child: Container(
//                             decoration: BoxDecoration(border: Border.all()),
//                             padding: const EdgeInsets.all(14),
//                             child: Text('Hello World 1a')),
//                       ),
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: const EdgeInsets.all(14),
//                           child: const Text('Hello World 1b')),
//                     ])),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: const EdgeInsets.all(14),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         child: Container(
//                             decoration: BoxDecoration(border: Border.all()),
//                             padding: const EdgeInsets.all(14),
//                             child: Text('Hello World 2a')),
//                       ),
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: const EdgeInsets.all(14),
//                           child: const Text('Hello World 2b')),
//                       Expanded(
//                         child: Container(
//                             decoration: BoxDecoration(border: Border.all()),
//                             padding: const EdgeInsets.all(14),
//                             child: Text('Hello World 2c')),
//                       ),
//                     ])),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: const EdgeInsets.all(14),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                           decoration: BoxDecoration(border: Border.all()),
//                           padding: const EdgeInsets.all(14),
//                           child: const Text('Hello World 3b')),
//                       Expanded(
//                         child: Container(
//                             decoration: BoxDecoration(border: Border.all()),
//                             padding: const EdgeInsets.all(14),
//                             child: Text('Hello World 3c')),
//                       ),
//                     ])),
//           ]),
//         ),
//       ),
//     );
//   }
// }
/* EXPANDED */

/* MAINAXISALIGNMENT & CROSSAXISALIGNMENT */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 1!')),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 2!')),
//             Container(
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 3!')),
//           ]),
//         ),
//       ),
//     );
//   }
// }
/* MAINAXISALIGNMENT & CROSSAXISALIGNMENT */

/* STACK */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: Stack(children: [
//             Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World 1a')),
//             Container(
//                 width: 200,
//                 decoration: BoxDecoration(border: Border.all()),
//                 padding: EdgeInsets.all(14),
//                 child: Text('Hello World xxx')),
//           ]),
//         ),
//       ),
//     );
//   }
// }
/* STACK */

/* GRIDVIEW */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//           child: GridView(
//               padding: const EdgeInsets.all(20),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//               ),
//               children: [
//                 Container(
//                     decoration: BoxDecoration(border: Border.all()),
//                     padding: EdgeInsets.all(14),
//                     child: Text('Hello World 1a')),
//                 Container(
//                     decoration: BoxDecoration(border: Border.all()),
//                     padding: EdgeInsets.all(14),
//                     child: Text('Hello World 1b')),
//                 Container(
//                     decoration: BoxDecoration(border: Border.all()),
//                     padding: EdgeInsets.all(14),
//                     child: Text('Hello World 1c')),
//                 Container(
//                     decoration: BoxDecoration(border: Border.all()),
//                     padding: EdgeInsets.all(14),
//                     child: Text('Hello World 1d')),
//                 Container(
//                     decoration: BoxDecoration(border: Border.all()),
//                     padding: EdgeInsets.all(14),
//                     child: Text('Hello World 1e')),
//               ]),
//         ),
//       ),
//     );
//   }
// }
/* GRIDVIEW */

/* Latihan 7 */
// GOYEK

/* Latihan 8 */
// TUITER

/* Latihan 9 */
// PENUHI LINDUNGI
/* - LAYOUT - */

/* - WIDGET NAVIGASI - */

/* TAB */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//               title: const Text('Fakultas'),
//               bottom: const TabBar(tabs: [
//                 Tab(icon: Icon(Icons.directions_bike), text: "Sepeda"),
//                 Tab(icon: Icon(Icons.directions_boat), text: "Kapal")
//               ])),
//           body: const TabBarView(
//             children: [
//               Center(
//                   child: Text(
//                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ultricies mi. Sed id libero at ligula molestie aliquam vel sit amet velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec congue pharetra lacus, nec malesuada tellus ornare nec. Proin ultricies hendrerit velit sit amet hendrerit. In id turpis efficitur, pretium tortor ac, convallis dolor. Integer faucibus ligula nec libero sollicitudin, non commodo odio eleifend. Sed augue velit, fringilla id dui fringilla, mollis dictum ipsum. Aenean et ex sollicitudin, aliquet enim sit amet, malesuada ante. Maecenas ut risus quis eros finibus gravida.",
//                 style: TextStyle(
//                     fontFamily: 'Roboto',
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.w100),
//                 textAlign: TextAlign.justify,
//               )),
//               Center(
//                   child: Text(
//                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ultricies mi. Sed id libero at ligula molestie aliquam vel sit amet velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec congue pharetra lacus, nec malesuada tellus ornare nec. Proin ultricies hendrerit velit sit amet hendrerit. In id turpis efficitur, pretium tortor ac, convallis dolor. Integer faucibus ligula nec libero sollicitudin, non commodo odio eleifend. Sed augue velit, fringilla id dui fringilla, mollis dictum ipsum. Aenean et ex sollicitudin, aliquet enim sit amet, malesuada ante. Maecenas ut risus quis eros finibus gravida.",
//                 style: TextStyle(
//                     fontFamily: 'Arial',
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.w900),
//                 textAlign: TextAlign.justify,
//               ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/* Latihan 10 */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   List<String> data = []; //data untuk listview

//   @override
//   void initState() {
//     super.initState();
//     // isi data listview
//     for (int i = 0; i < 20; i++) {
//       data.add("Data ke $i ");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//               bottom: const TabBar(
//                   tabs: [Tab(text: "For You"), Tab(text: "Following")])),
//           body: TabBarView(
//             children: [
//               Center(
//                 child: ListView.builder(
//                   itemCount: data.length,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: ListTile(
//                         leading: FlutterLogo(),
//                         onTap: () {
//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                             duration: Duration(seconds: 1),
//                             content: Text('Halo ${data[index]}'),
//                           ));
//                         },
//                         title: Text(data[index]),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Center(
//                 child: ListView.builder(
//                   itemCount: 2,
//                   itemBuilder: (context, index) {
//                     return GridView.count(
//                       shrinkWrap: true,
//                       crossAxisCount: 2,
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(14),
//                           child: Image.asset(
//                             'images/loremipsum.png',
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(14),
//                           child: Image.asset(
//                             'images/loremipsum.png',
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
/* TAB */

/* BOTTOM NAVIGATION BAR */
/* Single File */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   int idx = 0; //index yang aktif

//   static const List<Center> halaman = [
//     Center(child: Text("satu")),
//     Center(child: Text("dua"))
//   ];

//   void onItemTap(int index) {
//     setState(() {
//       idx = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: const Text("Bottom Nav")),
//       body: halaman[idx],
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: idx,
//           selectedItemColor: Colors.red,
//           onTap: onItemTap,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.school), label: " School"),
//           ]),
//     ));
//   }
// }

/* Multi File */
// import 'package:flutter/material.dart';
// import 'dua.dart';
// import 'satu.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   int idx = 0; //index yang aktif
//   void onItemTap(int index) {
//     setState(() {
//       idx = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: const Text("Bottom Nav")),
//       body: case2(idx),
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: idx,
//           selectedItemColor: Colors.red,
//           onTap: onItemTap,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.school), label: " School"),
//           ]),
//     ));
//   }

//   case2(int idx) {
//     switch (idx) {
//       case 0:
//         {
//           return const LayarSatu();
//         }

//       case 1:
//         {
//           return const LayarDua();
//         }
//     }
//   }
// }
/* BOTTOM NAVIGATION BAR */

/* DRAWER */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Test Drawer',
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//   @override
//   HomePageState createState() {
//     return HomePageState();
//   }
// }

// class HomePageState extends State<HomePage> {
//   int idx = 0;

//   static const List<Center> halaman = [
//     Center(child: Text("satu")),
//     Center(child: Text("dua")),
//     Center(child: Text("tiga")),
//   ];

//   void gantiItem(int index) {
//     setState(() {
//       idx = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("Test Drawer.")),
//         body: halaman[idx],
//         drawer: Drawer(
//             child: ListView(
//           children: [
//             const DrawerHeader(child: Text("Ini Header")),
//             ListTile(
//                 title: const Text("item1"),
//                 onTap: () {
//                   gantiItem(0);
//                 }),
//             ListTile(
//                 title: const Text("item2"),
//                 onTap: () {
//                   gantiItem(1);
//                 }),
//             ListTile(
//                 title: const Text("item3"),
//                 onTap: () {
//                   gantiItem(2);
//                 })
//           ],
//         )));
//   }
// }
/* DRAWER */

/* APPBAR */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   int idx = 0; //index yang aktif

//   static const List<Center> halaman = [
//     Center(child: Text("satu")),
//     Center(child: Text("dua"))
//   ];

//   void onItemTap(int index) {
//     setState(() {
//       idx = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//       leading: FlutterLogo(),
//       backgroundColor: Colors.blueGrey,
//       title: Text('My App'),
//       actions: <Widget>[
//         IconButton(
//           icon: Icon(Icons.account_circle_rounded),
//           onPressed: () {
//             // icon account di tap
//           },
//         ),
//         IconButton(
//           icon: Icon(Icons.settings),
//           onPressed: () {
//             // icon setting ditap
//           },
//         ),
//       ],
//     )));
//   }
// }
/* APPBAR */

/* - WIDGET NAVIGASI - */

/* - ROUTING - */

/* NAVIGATOR */
/* Normal */
// import 'package:flutter/material.dart';

// class LayarKedua extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Screen 2'),
//       ),
//       body: Center(child: Text("Ini screen kedua, tap icon back di app bar")),
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'Test Route', home: MyHome());
//   }
// }

// //perlu dipisah karena Navigator perlu punya parent Material App
// class MyHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             child: Text('Ke screen Kedua'),
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                 return LayarKedua();
//               }));
//             }),
//       ),
//     );
//   }
// }

/* Modifikasi */
// import 'package:flutter/material.dart';

// class LayarKedua extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Screen 2'),
//         ),
//         body: Center(
//             child: ElevatedButton(
//           child: const Text("Ini screen kedua, tap icon back di app bar"),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         )));
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'Test Route', home: MyHome());
//   }
// }

// //perlu  dipisah karena Navigator perlu punya parent Material App
// class MyHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             child: const Text('Ke screen Kedua'),
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                 return LayarKedua();
//               }));
//             }),
//       ),
//     );
//   }
// }
/* NAVIGATOR */

/* PASSING PARAMETER */
/* Normal */
// import 'package:flutter/material.dart';

// class LayarKedua extends StatelessWidget {
//   const LayarKedua({Key? key, required this.pesan}) : super(key: key);
//   final String pesan;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Screen 2'),
//         ),
//         body: Center(
//             child: ElevatedButton(
//           child: Text("Ini screen kedua, ada pesan: $pesan"),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         )));
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(title: 'Test Route', home: MyHome());
//   }
// }

// //perlu  dipisah karena Navigator perlu punya parent Material App
// class MyHome extends StatelessWidget {
//   const MyHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             child: const Text('Ke screen Kedua'),
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                 return const LayarKedua(pesan: "haloo ini pesan dari screen 1");
//               }));
//             }),
//       ),
//     );
//   }
// }

/* Menerima Result dari Screen yang Dipanggil */
// import 'package:flutter/material.dart';

// class LayarKedua extends StatelessWidget {
//   const LayarKedua({Key? key, required this.pesan}) : super(key: key);
//   final String pesan;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Screen 2'),
//         ),
//         body: Center(
//             child: ElevatedButton(
//           child: Text("Ini screen kedua, ada pesan: $pesan"),
//           onPressed: () {
//             Navigator.of(context).pop("ini data dari screen 2");
//           },
//         )));
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(title: 'Test Route', home: MyHome());
//   }
// }

// //perlu  dipisah karena Navigator perlu punya parent Material App
// class MyHome extends StatefulWidget {
//   const MyHome({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     return MyHomeState();
//   }
// }

// class MyHomeState extends State<MyHome> {
//   String _hasil = "";

//   set hasil(String hasil) {
//     _hasil = hasil;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Route'),
//       ),
//       body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         ElevatedButton(
//             child: const Text('Ke screen Kedua'),
//             onPressed: () async {
//               hasil = await Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) {
//                 return const LayarKedua(pesan: "haloo ini pesan dari screen 1");
//               }));
//             }),
//         Text(" Hasil: $_hasil")
//       ])),
//     );
//   }
// }

/* Named Route */
// import 'package:flutter/material.dart';

// class LayarKedua extends StatelessWidget {
//   const LayarKedua({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Screen 2'),
//         ),
//         body: Center(
//             child: ElevatedButton(
//           child: const Text("Ini screen kedua, tap icon back di app bar"),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         )));
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Test Route',
//       routes: {
//         '/': (context) => const MyHome(),
//         '/layar2': (context) => const LayarKedua()
//       },
//     );
//   }
// }

// //perlu  dipisah karena Navigator perlu punya parent Material App
// class MyHome extends StatelessWidget {
//   const MyHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test Route'),
//       ),
//       body: Center(
//           child: ElevatedButton(
//               child: const Text('Ke screen Kedua'),
//               onPressed: () {
//                 Navigator.of(context).pushNamed("/layar2");
//               })),
//     );
//   }
// }
/* PASSING PARAMETER */

/* - ROUTING - */