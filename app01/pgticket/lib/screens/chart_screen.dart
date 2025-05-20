import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XX : ss'),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // レーダーチャート
            Expanded(
              child: RadarChart(
                features: const ['Data 1', 'Data 2', 'Data 3', 'Data 4', 'Data 5', 'Data 6'],
                data: const [
                  [3, 4, 2, 5, 4, 3],
                ],
                ticks: const [1, 2, 3, 4, 5],
                graphColors: const [Colors.pink],
              ),
            ),
            const SizedBox(height: 16),
            // カテゴリボックス
            Expanded(
              child: ListView(
                children: [
                  _buildCategoryBox(Colors.blue, 'Category 1'),
                  _buildCategoryBox(Colors.yellow, 'Category 2'),
                  _buildCategoryBox(Colors.red, 'Category 3'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // カテゴリリンク
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Category',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ],
        ),
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

  Widget _buildCategoryBox(Color color, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}