import 'package:flutter/material.dart';
import 'package:spotify_clone/data.dart';

class LibraryScreen extends StatelessWidget {
  LibraryScreen({super.key});

  final List<String> tabs = [
    'Playlists',
    'Artists',
    'Albums',
    'Podcasts & Shows',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Image.asset('assets/profile.png', height: 35),
                  const SizedBox(width: 8),
                  const Text(
                    'Your Library',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  Image.asset('assets/add.png', height: 25),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF7F7F7F),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        child: Text(tabs[index]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
              child: Row(
                children: [
                  Image.asset('assets/sort.png', height: 14),
                  const SizedBox(width: 8),
                  const Text(
                    'Recently played',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  Image.asset('assets/menu.png', height: 14),
                ],
              ),
            ),
            // Text('data'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: libraries.length,
                itemBuilder: (_, index) => ListTile(
                  leading: Image.asset(libraries[index].image),
                  title: Text(libraries[index].title),
                  subtitle: Row(
                    children: [
                      if (libraries[index].subtitleImage != null)
                        SizedBox(
                          width: 15,
                          child: Image.asset(
                            libraries[index].subtitleImage!,
                            height: 12,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      Text(libraries[index].subtitle),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
