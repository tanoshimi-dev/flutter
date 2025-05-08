import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(), // Google Fontsを適用
      ),
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;

  final List<Map<String, Object>> _questions = [
    {
      'question': 'Flutterはどのプログラミング言語を使用しますか？',
      'options': ['Java', 'Kotlin', 'Dart', 'Swift'],
      'answer': 'Dart',
    },
    {
      'question': 'FlutterのUIフレームワークは何ですか？',
      'options': ['React Native', 'SwiftUI', 'Jetpack Compose', 'Material Design'],
      'answer': 'Material Design',
    },
  ];

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        _currentQuestionIndex = 0; // 最初の質問に戻る
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_currentQuestionIndex]['question'] as String;
    final options = _questions[_currentQuestionIndex]['options'] as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/girl_programmer.jpg'),
              fit: BoxFit.cover, // 画像を画面全体にフィット
            ),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question,
              style: GoogleFonts.yuseiMagic(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...options.map((option) {
              return ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(option, style: GoogleFonts.yuseiMagic(fontSize: 18)),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}