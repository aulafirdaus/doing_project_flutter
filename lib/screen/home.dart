import 'package:flutter/material.dart';



// referensi UI nya dari link ini https://i.pinimg.com/originals/8b/5c/56/8b5c569ad48701761be0bf8757ccb243.png
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome !',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
              const SizedBox(height: 50),
              Container(
                width: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                  ),
                    child: const Text('Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [Colors.blue, Colors.purple],
                            begin: Alignment.bottomRight,
                            end: Alignment.topRight,
                          ).createShader(bounds);
                        },
                    child: OutlinedButton(
                      onPressed: () => {},
                      style: OutlinedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        side: const BorderSide(
                          width: 2.0, // Ketebalan border
                          color: Colors.white, // Agar border mengikuti gradient
                        ),
                      ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Agar warna teks mengikuti gradient
                        ),
                      ),
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