import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



// referensi UI nya dari link ini https://i.pinimg.com/originals/8b/5c/56/8b5c569ad48701761be0bf8757ccb243.png
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Home'),
        //   backgroundColor: Colors.transparent,
        // ),
        body: 
         Stack(
           children: [
            // Background gradient
              Container(
                  color: Colors.white,
              ),
            // Wavy white shape
              ClipPath(
                clipper: WaveClipper(),
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              Center(
              heightFactor: 2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Welcome !',
                      style: TextStyle(
                      fontSize: 33,
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
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var icon in [
                        MdiIcons.twitter,
                        MdiIcons.linkedin,
                        MdiIcons.facebook,
                        MdiIcons.google
                      ]) // ini untuk membuat ikon supaya tidak membuat container secara berulang
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: const CircleBorder(),
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(horizontal: 10)
                        ),
                        child: Container(
                              // margin: const EdgeInsets.symmetric(horizontal: 5), // Jarak antar ikon
                              width: 35,
                              height: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Colors.blue, Colors.purple],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                ),
                              ),
                          child: Icon(icon, color: Colors.white)
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3,),
                      const Text('Sign in with another account', 
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                          ),
                        ),
                    ],
                  ),
                ),
              ],
         ),
      ),
    );
  }
}


// Custom clipper to create the wave shape
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 4, 
      size.height, 
      size.width / 2, 
      size.height - 50,
    );
    path.quadraticBezierTo(
      size.width * 3 / 4, 
      size.height - 100, 
      size.width, 
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}