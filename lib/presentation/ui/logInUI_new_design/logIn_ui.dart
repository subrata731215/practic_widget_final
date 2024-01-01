import 'package:flutter/material.dart';

class LogInUiNewScreen extends StatelessWidget {
  const LogInUiNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock_open, size: 80, color: Colors.black38),
              const SizedBox(height: 30),
              const Text('Welcome back you\'ve been missed!',
                  style: TextStyle(
                      color: Colors.black26, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text('Forgot Password?',
                    style: TextStyle(
                        color: Colors.black38, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white60),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(thickness: 1, color: Colors.white38),
                      ),
                      SizedBox(width: 7),
                      Text('or continue with'),
                      SizedBox(width: 7),
                      Expanded(
                        child: Divider(thickness: 1, color: Colors.white38),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white38,
                            padding: EdgeInsets.all(20)),
                        onPressed: () {},
                        child: Image.asset(
                          'assets/google.png',
                          scale: 30,
                        ),
                      ),
                      const SizedBox(width: 20),
                      OutlinedButton(
                        autofocus: true,
                        clipBehavior: Clip.none,
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            backgroundColor: Colors.white38),
                        onPressed: () {},
                        child: Image.asset(
                          'assets/apple-logo.png',
                          scale: 120,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
