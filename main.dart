import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;

  bool get isFull => count >= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/image2.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFull ? "Lotado" : "Pode entrar",
                style: TextStyle(
                  fontSize: 40,
                  color: isFull ? Colors.red : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  "$count",
                  style: const TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: isFull ? null : increment,
                      style: TextButton.styleFrom(
                          backgroundColor: isFull
                              ? Colors.white.withOpacity(0.2)
                              : Colors.white,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          )),
                      child: const Text(
                        "Entrou",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: isEmpty ? null : decrement,
                      style: TextButton.styleFrom(
                          backgroundColor: isEmpty
                              ? Colors.white.withOpacity(0.2)
                              : Colors.white,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          )),
                      child: const Text(
                        "Saiu",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  "*Capacidade máxima: 20",
                  style: TextStyle(
                      color: isFull ? Colors.yellowAccent : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: isFull ? 20 : 16),
                ),
              )
            ],
          ),
        ));
  }
}
