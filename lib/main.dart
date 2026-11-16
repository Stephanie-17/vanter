import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:manual_speech_to_text/manual_speech_to_text.dart';
import 'package:vanter/app_colors.dart';
import 'package:vanter/screens/vanter_splashscreen.dart';

import 'package:vanter/widget_tree.dart';

// import 'package:vanter/screens/vanter_splashscreen.dart';

void main() async {
  //Initialising hive.
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.openBox("notes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          tertiary: AppColors.tertiary,
        ),
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const VanterSplashscreen(),
    );
  }
}

class Speech extends StatefulWidget {
  const new({super.key});

  @override
  State<Speech> createState() => _SpeechState();
}

class _SpeechState extends State<Speech> {
  late ManualSttController _controller;
  String _finalRecognizedText = '';
  ManualSttState _currentState = ManualSttState.stopped;
  // double _soundLevel = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = ManualSttController(context);
    _setUpController();
  }

  void _setUpController() {
    _controller.listen(
      onListeningStateChanged: (state) {
        setState(() => _currentState = state);
      },
      onListeningTextChanged: (recognizedText) {
        setState(() => _finalRecognizedText = recognizedText);
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('State: ${_currentState.name}'),
            SizedBox(height: 16),
            Text('Final Recognised Text:  $_finalRecognizedText'),
            SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _currentState == ManualSttState.stopped
                      ? _controller.startStt
                      : null,
                  child: Text("Start"),
                ),

                ElevatedButton(
                  onPressed: () {
                    _currentState == ManualSttState.listening
                        ? _controller.pauseStt()
                        : _currentState == ManualSttState.paused
                        ? _controller.resumeStt()
                        : null;
                  },
                  child: Text(
                    _currentState == ManualSttState.paused ? 'Resume' : 'Pause',
                  ),
                ),

                ElevatedButton(
                  onPressed: _currentState != ManualSttState.stopped
                      ? _controller.stopStt
                      : null,
                  child: const Text('Stop'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
