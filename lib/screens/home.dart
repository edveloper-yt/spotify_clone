import 'package:flutter/material.dart';
import 'package:spotify_clone/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    const Text(
                      'Recently played',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/bell.png', height: 24),
                    const SizedBox(width: 16),
                    Image.asset('assets/history.png', height: 24),
                    const SizedBox(width: 16),
                    Image.asset('assets/setting.png', height: 24),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: recentlyPlayed.length,
                  itemBuilder: (BuildContext context, int index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(recentlyPlayed[index].image, height: 105),
                      const SizedBox(height: 6),
                      Text(
                        recentlyPlayed[index].text,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 18),
                child: Row(
                  children: [
                    Image.asset('assets/review.png', height: 60),
                    const SizedBox(width: 8),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '#SPOTIFYWRAPPED',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF9C9C9C),
                          ),
                        ),
                        Text(
                          'Your 2021 in review',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 18),
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: review.length,
                  itemBuilder: (BuildContext context, int index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(review[index].image, height: 150),
                      const SizedBox(height: 6),
                      Text(
                        review[index].text,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  'Editor\'s picks',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 18),
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: editorsPick.length,
                  itemBuilder: (BuildContext context, int index) => SizedBox(
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(editorsPick[index].image, height: 150),
                        const SizedBox(height: 6),
                        Text(
                          editorsPick[index].text,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
