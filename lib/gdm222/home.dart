import 'package:flutter/material.dart';
import '../constants.dart';

class GDM222Screen extends StatelessWidget {
  const GDM222Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GDM 222'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(DefaultPadding.GENERAL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GDM 222 - Data structure and algorithms for game development',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Design and analysis of game algorithms; relationships between data representation and game efficiency; data structures for game; essential algorithm design techniques; analysis of time and space requirements for algorithms and characteristics of difficulties in solving problems.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Divider(),
            Text(
              'Semesters',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              '2/2565',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gdm222/year65');
              },
              child: const Text('Next'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            )
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