import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.animation, size: 100)
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(duration: 1200.ms, color: Colors.amber)
                .then()
                .shake(hz: 2, curve: Curves.easeInOutCubic)
                .then()
                .tween(begin: 0.0, end: 1.0)
                .moveY(begin: 0, end: -50, curve: Curves.easeOut)
                .then()
                .moveY(begin: -50, end: 0, curve: Curves.easeIn),
            const SizedBox(height: 50),
            const Text(
              'Smooth Animations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
                .animate()
                .fadeIn(duration: 600.ms)
                .slideX(begin: -0.1, end: 0),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            )
                .animate()
                .fadeIn(delay: 300.ms, duration: 600.ms)
                .scale(begin: const Offset(0.8, 0.8)),
          ],
        ),
      ),
    );
  }
}
