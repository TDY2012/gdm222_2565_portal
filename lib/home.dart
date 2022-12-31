import 'package:flutter/material.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(DefaultPadding.GENERAL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Welcome to my portal page. I am Thitiwudh Uasmith. This page is just a reliable, customizable and publicly available place where I can share things to a group of people. You may find various random things here and there. Please do not mind that and navigate towards an instruction I gave in real-life.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Divider(),
            Text(
              'Classes',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'GDM 222 - Data structure and algorithms for game development',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gdm222');
              },
              child: const Text('Next'),
            ),
          ].map(
            (e) => Padding(
              padding: const EdgeInsets.all(DefaultPadding.HALF),
              child: e,
            )
          ).toList(),
        ),
      )
    );
  }
}