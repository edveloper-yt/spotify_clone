import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Image.asset(
                  "assets/welcome_bg.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                      Color(0xFF121212),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 53,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Millions of Songs.\nFree on Spotify.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomeScreen(),
                      ))
                    },
                    style: ButtonStyle(
                      minimumSize: const MaterialStatePropertyAll(
                        Size(
                          double.infinity,
                          50,
                        ),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xFF1ED760)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Sign up free",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      minimumSize: const MaterialStatePropertyAll(
                        Size(
                          double.infinity,
                          50,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/google.png",
                          height: 18,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              "Continue with Google",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18)
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      minimumSize: const MaterialStatePropertyAll(
                        Size(
                          double.infinity,
                          50,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/fb.png",
                          height: 18,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18)
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      minimumSize: const MaterialStatePropertyAll(
                        Size(
                          double.infinity,
                          50,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/apple.png",
                          height: 18,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              "Continue with Apple",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
