import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.white, // 背景色を白に設定
            ),
          ),

    Positioned(
      right: MediaQuery.of(context).size.width * 0.12, // 左から20%
      child: Container(
        width: 500, // 必要に応じて幅を指定
        height: 700, // 必要に応じて高さを指定
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/girl_programmer.jpg'),
              fit: BoxFit.cover, // 比率を保ちながら表示
            ),
          ),
        ),
    ),

          // Container(
          //
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/images/girl_programmer.jpg'),
          //       fit: BoxFit.cover, // 画像を画面全体にフィット
          //     ),
          //   ),
          //
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '',
          ),
        ],
        backgroundColor: Colors.yellow,
      ),
    );
  }
}