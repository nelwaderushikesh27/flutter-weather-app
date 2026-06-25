import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Location bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  const Column(
                    children: [
                      Text(
                        'Mumbai, IN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Today'),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // Weather info
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny, size: 100, color: Colors.amber),
                    SizedBox(height: 16),
                    Text(
                      '32°C',
                      style: TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Sunny',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Feels like 34°C',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            // Forecast
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Mon'),
                          Icon(Icons.cloud, size: 24),
                          Text('28°'),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
